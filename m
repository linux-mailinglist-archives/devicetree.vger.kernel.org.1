Return-Path: <devicetree+bounces-1893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD687A8D36
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 21:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD70B281322
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 19:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44DEC405EA;
	Wed, 20 Sep 2023 19:56:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27925405E4;
	Wed, 20 Sep 2023 19:56:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3492C433C9;
	Wed, 20 Sep 2023 19:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695239791;
	bh=hql+kAlfoekBXt3vTaUlDPCPrQsmIUz1/+7V8SFb+1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mh0SXSCxI277x52AMsLpiUAKi4OdbN74SkXCBJ1erB5G8Q0U2erESV4xVcreGe11C
	 tcD53cdu3OKl0FXCrQ8Z74MgPvufYKrCm2YDaM+dGTQlluoWt3+4N/vi1R8ArBeLdO
	 ls5lfikybrVorW2FfJniAfC61bNdClvNxrJ2DMPOGFZOVsUWmDGFcNd7sh7ueaze6X
	 naMurG4DY98f98wj3qaet6ZTTU685zfen0JwbYjmajv48va87B4Yzzr8e92YcoUYOM
	 w7Oo+YettRVEEFb4TGfNjyc58RZkr2ptyRjdIdIPeq7Cnc+IaywoU85brGfJ32D2kj
	 01FyucPY3x0yQ==
Received: (nullmailer pid 2823556 invoked by uid 1000);
	Wed, 20 Sep 2023 19:56:29 -0000
Date: Wed, 20 Sep 2023 14:56:29 -0500
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Shuah Khan <shuah@kernel.org>, Mark Brown <broonie@kernel.org>, kernelci@lists.linux.dev, kernel@collabora.com, Guenter Roeck <groeck@chromium.org>, Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add a test to catch unprobed Devicetree devices
Message-ID: <20230920195629.GA2784994-robh@kernel.org>
References: <20230828211424.2964562-1-nfraprado@collabora.com>
 <97c368a1-9c76-490a-848e-eacd6411e810@notapiano>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <97c368a1-9c76-490a-848e-eacd6411e810@notapiano>

On Wed, Sep 20, 2023 at 10:03:06AM -0400, N�colas F. R. A. Prado wrote:
> On Mon, Aug 28, 2023 at 05:13:09PM -0400, N�colas F. R. A. Prado wrote:
> > 
> > Regressions that cause a device to no longer be probed by a driver can
> > have a big impact on the platform's functionality, and despite being
> > relatively common there isn't currently any generic test to detect them.
> > As an example, bootrr [1] does test for device probe, but it requires
> > defining the expected probed devices for each platform.
> > 
> > Given that the Devicetree already provides a static description of
> > devices on the system, it is a good basis for building such a test on
> > top.
> > 
> > This series introduces a test to catch regressions that prevent devices
> > from probing.
> > 
> > Patches 1 and 2 extend the existing dt-extract-compatibles to be able to
> > output only the compatibles that can be expected to match a Devicetree
> > node to a driver. Patch 2 adds a kselftest that walks over the
> > Devicetree nodes on the current platform and compares the compatibles to
> > the ones on the list, and on an ignore list, to point out devices that
> > failed to be probed.
> > 
> > A compatible list is needed because not all compatibles that can show up
> > in a Devicetree node can be used to match to a driver, for example the
> > code for that compatible might use "OF_DECLARE" type macros and avoid
> > the driver framework, or the node might be controlled by a driver that
> > was bound to a different node.
> > 
> > An ignore list is needed for the few cases where it's common for a
> > driver to match a device but not probe, like for the "simple-mfd"
> > compatible, where the driver only probes if that compatible is the
> > node's first compatible.
> > 
> > The reason for parsing the kernel source instead of relying on
> > information exposed by the kernel at runtime (say, looking at modaliases
> > or introducing some other mechanism), is to be able to catch issues
> > where a config was renamed or a driver moved across configs, and the
> > .config used by the kernel not updated accordingly. We need to parse the
> > source to find all compatibles present in the kernel independent of the
> > current config being run.
> > 
> > [1] https://github.com/kernelci/bootrr
> > 
> > Changes in v3:
> > - Added DT selftest path to MAINTAINERS
> > - Enabled device probe test for nodes with 'status = "ok"'
> > - Added pass/fail/skip totals to end of test output
> > 
> > Changes in v2:
> > - Extended dt-extract-compatibles script to be able to extract driver
> >   matching compatibles, instead of adding a new one in Coccinelle
> > - Made kselftest output in the KTAP format
> > 
> > N�colas F. R. A. Prado (3):
> >   dt: dt-extract-compatibles: Handle cfile arguments in generator
> >     function
> >   dt: dt-extract-compatibles: Add flag for driver matching compatibles
> >   kselftest: Add new test for detecting unprobed Devicetree devices
> > 
> >  MAINTAINERS                                   |  1 +
> >  scripts/dtc/dt-extract-compatibles            | 74 +++++++++++++----
> >  tools/testing/selftests/Makefile              |  1 +
> >  tools/testing/selftests/dt/.gitignore         |  1 +
> >  tools/testing/selftests/dt/Makefile           | 21 +++++
> >  .../selftests/dt/compatible_ignore_list       |  1 +
> >  tools/testing/selftests/dt/ktap_helpers.sh    | 70 ++++++++++++++++
> >  .../selftests/dt/test_unprobed_devices.sh     | 83 +++++++++++++++++++
> >  8 files changed, 236 insertions(+), 16 deletions(-)
> >  create mode 100644 tools/testing/selftests/dt/.gitignore
> >  create mode 100644 tools/testing/selftests/dt/Makefile
> >  create mode 100644 tools/testing/selftests/dt/compatible_ignore_list
> >  create mode 100644 tools/testing/selftests/dt/ktap_helpers.sh
> >  create mode 100755 tools/testing/selftests/dt/test_unprobed_devices.sh
> 
> Hi Rob,
> 
> gentle ping on this series.
> 
> I take it you'll be merging this through your tree, so I've added Shuah's R-b
> that she supplied on v2 for the kselftest patch.

Sorry, now applied.

If you send something before or in the merge window, it is best to 
rebase and resend after rc1 comes out.

Rob

