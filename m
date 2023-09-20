Return-Path: <devicetree+bounces-1790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D997A8617
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:03:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06BE0281FA2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:03:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1B7F3AC38;
	Wed, 20 Sep 2023 14:03:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4037936B12
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 14:03:16 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC8BB9;
	Wed, 20 Sep 2023 07:03:13 -0700 (PDT)
Received: from notapiano (unknown [IPv6:2600:4041:5b1a:cd00:524d:e95d:1a9c:492a])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8A6936607201;
	Wed, 20 Sep 2023 15:03:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695218591;
	bh=0As1l5pUnNWGSkzZabr2JsNuZssFSpilRQkjdz8AJ1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=igMB+AMiayEFp612LIiv/IJGUNWjv/yfNcI67RWl3fmXUEAusqwBRIlxTDEnn2i74
	 okinKpYzPipz6KpaHM6vvNcdzoEXqnTJ2BgQiVicY1/H3HXJHGjSAysNjpxU7HhdCs
	 F5ZGEAKOmET+xH7LYlgwLFAJMwlcvTf/KRpwxU2fn4JmBJ5QOlVGdMJrEJoPX7bOvB
	 twcnEEonoCMblVmogccUDxSIVxOChfpO4MI6qbNxW0kQh0YGDbPdJRKLlZxhsddiz6
	 ZMNqYv8Rg1RsUg86xJu1pzQnOcJAVnrGWtuFpq4W0DC1i2LZFeNKUErHFMEZd6klRr
	 Efc5V3eD7jPiw==
Date: Wed, 20 Sep 2023 10:03:06 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, kernelci@lists.linux.dev,
	kernel@collabora.com, Guenter Roeck <groeck@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add a test to catch unprobed Devicetree devices
Message-ID: <97c368a1-9c76-490a-848e-eacd6411e810@notapiano>
References: <20230828211424.2964562-1-nfraprado@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230828211424.2964562-1-nfraprado@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Aug 28, 2023 at 05:13:09PM -0400, Nícolas F. R. A. Prado wrote:
> 
> Regressions that cause a device to no longer be probed by a driver can
> have a big impact on the platform's functionality, and despite being
> relatively common there isn't currently any generic test to detect them.
> As an example, bootrr [1] does test for device probe, but it requires
> defining the expected probed devices for each platform.
> 
> Given that the Devicetree already provides a static description of
> devices on the system, it is a good basis for building such a test on
> top.
> 
> This series introduces a test to catch regressions that prevent devices
> from probing.
> 
> Patches 1 and 2 extend the existing dt-extract-compatibles to be able to
> output only the compatibles that can be expected to match a Devicetree
> node to a driver. Patch 2 adds a kselftest that walks over the
> Devicetree nodes on the current platform and compares the compatibles to
> the ones on the list, and on an ignore list, to point out devices that
> failed to be probed.
> 
> A compatible list is needed because not all compatibles that can show up
> in a Devicetree node can be used to match to a driver, for example the
> code for that compatible might use "OF_DECLARE" type macros and avoid
> the driver framework, or the node might be controlled by a driver that
> was bound to a different node.
> 
> An ignore list is needed for the few cases where it's common for a
> driver to match a device but not probe, like for the "simple-mfd"
> compatible, where the driver only probes if that compatible is the
> node's first compatible.
> 
> The reason for parsing the kernel source instead of relying on
> information exposed by the kernel at runtime (say, looking at modaliases
> or introducing some other mechanism), is to be able to catch issues
> where a config was renamed or a driver moved across configs, and the
> .config used by the kernel not updated accordingly. We need to parse the
> source to find all compatibles present in the kernel independent of the
> current config being run.
> 
> [1] https://github.com/kernelci/bootrr
> 
> Changes in v3:
> - Added DT selftest path to MAINTAINERS
> - Enabled device probe test for nodes with 'status = "ok"'
> - Added pass/fail/skip totals to end of test output
> 
> Changes in v2:
> - Extended dt-extract-compatibles script to be able to extract driver
>   matching compatibles, instead of adding a new one in Coccinelle
> - Made kselftest output in the KTAP format
> 
> Nícolas F. R. A. Prado (3):
>   dt: dt-extract-compatibles: Handle cfile arguments in generator
>     function
>   dt: dt-extract-compatibles: Add flag for driver matching compatibles
>   kselftest: Add new test for detecting unprobed Devicetree devices
> 
>  MAINTAINERS                                   |  1 +
>  scripts/dtc/dt-extract-compatibles            | 74 +++++++++++++----
>  tools/testing/selftests/Makefile              |  1 +
>  tools/testing/selftests/dt/.gitignore         |  1 +
>  tools/testing/selftests/dt/Makefile           | 21 +++++
>  .../selftests/dt/compatible_ignore_list       |  1 +
>  tools/testing/selftests/dt/ktap_helpers.sh    | 70 ++++++++++++++++
>  .../selftests/dt/test_unprobed_devices.sh     | 83 +++++++++++++++++++
>  8 files changed, 236 insertions(+), 16 deletions(-)
>  create mode 100644 tools/testing/selftests/dt/.gitignore
>  create mode 100644 tools/testing/selftests/dt/Makefile
>  create mode 100644 tools/testing/selftests/dt/compatible_ignore_list
>  create mode 100644 tools/testing/selftests/dt/ktap_helpers.sh
>  create mode 100755 tools/testing/selftests/dt/test_unprobed_devices.sh

Hi Rob,

gentle ping on this series.

I take it you'll be merging this through your tree, so I've added Shuah's R-b
that she supplied on v2 for the kselftest patch.

Thanks,
Nícolas

