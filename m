Return-Path: <devicetree+bounces-275104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4I16K5/js2ktcQAAu9opvQ
	(envelope-from <devicetree+bounces-275104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:14:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 173AD281435
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:14:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62E823186C3C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4D936C9E4;
	Fri, 13 Mar 2026 10:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sck4RHDV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8F232720C;
	Fri, 13 Mar 2026 10:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773396572; cv=none; b=WXQ3I/OgfYLoXV1E6e2rSA2Skwuf7h51W0c2sDX2sF1P2gtj4HW+14wpBgfull4sBnen82rTTmUaC+xO85u2xJC/tLp4ysNl/p7I7GBs07fheTrrABe6dtTtMTvKjhP5MRegbJme8pwOYbLW4/YeZNZ05Luel3R6NdHGZvev2U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773396572; c=relaxed/simple;
	bh=tlqVEgXi+9Hgl30aJj8IATCLNvFeia9pSzMeIWgH9lQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bqddO4c57ETiwvpFEGFzMPHeigBWQczMeGEebUfuR47SzEom4DcukgATkbIFebFGaFc8gw+ytF4pxM1bn4ohw5UuS530zvD5+nwCZantDkzHqEwx1I743tz/2yzTTa18ijDUMJTizpGTnkrRRH//wcUUabZrTazw5/ZbGA75A3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sck4RHDV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08E64C19421;
	Fri, 13 Mar 2026 10:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773396572;
	bh=tlqVEgXi+9Hgl30aJj8IATCLNvFeia9pSzMeIWgH9lQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sck4RHDVsIxRPBOWi2y7E3DRuHpLE1gaVtMelT7kIGf5sGs56JOuYOYnOdr8YAJlg
	 5RVGr7Nlr8NJ2Jy/ZzvFZMYxqb35/zxm9Yo0F49zoFH2r1RnJQ2+FibeQAWCAG8SK9
	 brNTFMftBgRQc4J08CUEcqyOgNUKEx4pAdPSJVKEWGkei5jj4YV7vhcsK0VdNfbSh8
	 PXKEGLmnQuAOddr8ce9PnyXOdH+SYLX9YRxIXpA2yA3Q4wt6GsfJoSZJBUrZIKdDTS
	 YyPc8rc3ka4N6ESlq81yPbJ6guazPQMFvtazxg7/2JdQC+g651RGKgH++qsIteZLdb
	 iO0elfnOCYakw==
Date: Fri, 13 Mar 2026 11:09:29 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Maximilian Luz <luzmaximilian@gmail.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 01/11] dt-bindings: clock: qcom,gcc-sc8180x: Add
 missing GDSCs
Message-ID: <20260313-hilarious-peculiar-goose-fdaaa7@quoll>
References: <20260312112321.370983-1-val@packett.cool>
 <20260312112321.370983-2-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260312112321.370983-2-val@packett.cool>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275104-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 173AD281435
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 08:12:06AM -0300, Val Packett wrote:
> There are 5 more GDSCs that we were ignoring and not putting to sleep,
> which are listed in downstream DTS. Add them.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  include/dt-bindings/clock/qcom,gcc-sc8180x.h | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


