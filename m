Return-Path: <devicetree+bounces-13516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 819107DE7F9
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 23:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AB8C281239
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 22:17:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E7A915E83;
	Wed,  1 Nov 2023 22:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UflBDt7e"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DA3101CD
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 22:17:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B947C433C7;
	Wed,  1 Nov 2023 22:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698877064;
	bh=nyuKdgwIpK1RSgOQtbUwzcBNuY5rZc8qER6Dz4TIRyc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=UflBDt7eftMRf/joBP5ipLEU5vb7LxjqOOPo6Y//N0ou+4VykFBQDrn2sn0EFqMpN
	 qltZXQTFtplhDRN3HzOvYmkVOXyB+Zp0J2Qx0Hp0xwY0Ofli5NJnE5Mwx2ob445Eq5
	 jyJ8ToYXBSlOGo0wp7KI3bKoUCZTHeN8oHq1zmyIkSCm2DH8h+Nc8XSCoagPC14z2S
	 wxHkQM9qMxxDSDUk8EQtf3GLh2HcpKjCnpX7uop7MqfE+ph097h6GD+FN49pkbRayt
	 MGih3nCC2YGNqJuDWB121pISv/c8PZx1eahzFxNKX5RYIUG9Vm6vgdsIPbZtLyu+RZ
	 rQOvx+DMJTVdg==
Date: Wed, 1 Nov 2023 17:17:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 5/5] PCI: qcom: Add OPP support to scale performance
 state of power domain
Message-ID: <20231101221742.GA101112@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1694066433-8677-6-git-send-email-quic_krichai@quicinc.com>

On Thu, Sep 07, 2023 at 11:30:33AM +0530, Krishna chaitanya chundru wrote:
> While scaling the interconnect clocks based on PCIe link speed, it is also
> mandatory to scale the power domain performance state so that the SoC can
> run under optimum power conditions.

Can you expand "OPP" somewhere so we know what it stands for?  I'm
sure everybody knows except me :)

This commit log says something is mandatory; can you phrase it so it
says what the patch actually *does*?  The subject is kind of a title,
and I think it's important for the log to make sense without the
subject, so it's OK if the log repeats part or all of the subject.

Bjorn

