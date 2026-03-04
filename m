Return-Path: <devicetree+bounces-270993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sL5rG8wWqGlTnwAAu9opvQ
	(envelope-from <devicetree+bounces-270993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:26:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E2AC41FEF45
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:26:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C6A6301DEF1
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C033AE180;
	Wed,  4 Mar 2026 11:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F22L43OS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C73D397697
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772623549; cv=pass; b=u+MO9v/iDGhSj0O5M3CEDXY1PBeqiuGkbbjqamub6RhIzJ8RGYKiqsxReLYl3AlspRhttR4XMI7VVxhPrFTmLH+Ts8SfWvbUVQJXJipZCnzMO1nc1/56V6O1irs8n7JiIqI5sMlCLAgVHcOGuIn+JRGaFqNBnVwflXImgQX11e8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772623549; c=relaxed/simple;
	bh=oa4vWPoB1fF5ftQFI6lDu1BMB8/GYQYIVMLv015Aa1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f4Iht+2PwPorDYzJac2Yr+qG4ioNHj+218jzR8OxzFMyQRJlsD+su1mGsK4HtcXY3cyVCRt5qmuv3cFHlmoUvW2XYXoVW3b5KAKZfepKzkeiXb669WOmFfOHKOtS6M3Z7UjdLu4WHsZrYz7+2SsGso5Kp/RB6JQtbZKFRxUbEzA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F22L43OS; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-38a2e62b893so6331361fa.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:25:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772623547; cv=none;
        d=google.com; s=arc-20240605;
        b=WvHGqyxzkddDUnL1nXk3sbanpJqoV2p/zRTt216Y4aoWIAN4Wn2p4acUR1w5G9nbYE
         MFjJkz3tIm6TKMSJwL6ocYLDkv5p1CDdI0qg46voyTyPxUc3O6Z41t1PtMsqPvCjSmaI
         gMgzXrr+sIeVYsoyS1DHhsFi4RahO957KGOHI3gW8/OE+a+u5419JrXj04k/xPkRmnVg
         /4S4WqSeCT05JQod7M+15J4IgEy18+AqWA/lMzaJ+vOMqJgir32xKoof7W8qXrGDkcCq
         nNkegyEvVvNoh1y7sohcwUYfVFlLbC8bPXDy5dFXeabILBG73fvnNQ0Yzt9vYlQdNmyf
         buTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZFU75WKoCSxMgaLIkMh5UQtNA2gCsSWtdMfcToA7Tlc=;
        fh=KjcE7zLx9NsYIeS9e7C1fZscMvfVnb3LI91vwOy2AKU=;
        b=jbZ5uXXUIlRxvviLZLm24aPT3KakF56nJ24i3tMB6eqr2zZBOApVFPVS3NOuMSyBSU
         MMIUaoNXIsZKEy+PZPmMUYT9DdUXPEA9A/3g0mx4wz/UrI0r2BVFTBwHUd1WXDv/RRic
         twlLr4jR4Wy/XHpHD5aHmfD+znAuPi4UCh4kyZf6aMkwWgHc9QGM2S6DRYiQVBHkohJ/
         7Fo2xok6mePqGV0r5un442Br/NaqNyd0aXEQ75tECxVogFETX9RY88YUxRafNVxtoS29
         R+nr7DlUZewP0U32y+XIwUqcE7QKK9HuRNR25degxaInVAyo+jlZV5yQfNp8w/XUIDzV
         sSug==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772623547; x=1773228347; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFU75WKoCSxMgaLIkMh5UQtNA2gCsSWtdMfcToA7Tlc=;
        b=F22L43OSR8lrj1aIoE2NKQfTAo2CkYa2snPyJkN9QtOVYwfzuDVf/c6ErwnBonRpJ6
         tv3f83DYzCVl75CQqTumRxeElsg70QTpm7nNNBpQO3wltAf3bQOANK6uxLhjg3aOFaSD
         edG7ELKzyo/NJkOeufkb8zjlcyhxqz/DrS3xUWs8z8UuPB9P07YDYJyNdVXD2tGhna+h
         e7XV+6U0KsLMJrkRsWvnGYjkqAfRv/HuVf3JEX3hzyD4AANMJRJsFaTlBLfFqmVFs77H
         8ON1/RkRmyIp6JU/pIgyNRsITfcCjtEyoz78EFz50J2rY7njf8v64U09k9DVjjsx8+vz
         vXQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772623547; x=1773228347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZFU75WKoCSxMgaLIkMh5UQtNA2gCsSWtdMfcToA7Tlc=;
        b=vFAVGUpFpgdTASMSJCNyRYwhm2uZ3mz56yNQSiXSsR6BxAuJ9c9DFqWS/4Z4nvpLzN
         dtSk7XoSya8TpgD1vsl2j+96fgMM0Mzrb9GOetN/ucCpAalyHxoW0IWwLjwCPH4MLZcY
         V35Nr6gMw/CVkDUyyA8Q9vOejwzrPt6c0D95NZObVkjOpE3Pdfj1UGdOzMdJi1stBnyS
         wLKlX+rjtDt2oY68Aoc9JTFm7NL5Vdf3mSd31JnqtUpBY707YzyoZ6HlC+oW7YxuEwST
         bw4/u5HMv0UQOPEVmPqDN38ToEwon56RZw7t2bSxpHc517ALJkw6n0vNRZVhDgdkESmA
         OmNw==
X-Forwarded-Encrypted: i=1; AJvYcCV/HWGOERL6Fw5aVnfza85WxUGYlJMJ0Qw2xTF2TkHblIXKPTc/FFicaEa78zlRi48noFggmTRePOf2@vger.kernel.org
X-Gm-Message-State: AOJu0YzOYEHXQ7okLF6kFlTecexNSTEVqD4q1JUPp/e5wNvi7msRDs5I
	FooaHBj3IAvH5Wv1i0o8d8JjMZTmuVkt7DM6YAuh+F3E63viE2DMtgy0VsX4Qkp3i7P0ck3gy9J
	ZS9Ya3DX3yxOzDrCkrxiVIjjY7VEZ2sxygT0MHXQAng==
X-Gm-Gg: ATEYQzz8eskqYrvYuRPA2fIju+pXCSi9qiTkCSx17JKmfL67oUEc2RAIGt4K6eoPcIN
	Dl0TS7Nf2Bnmu83epjm8ep9ZCcLmTxfnDlBk7xnDnl56lwX7MbO8ncFdUFrFSF+wGN9vMdzJMsT
	MM0zz83ODoFxKRyE1+EkF+LRPHJLTS8lwWEDQK0Pt+h9NN8AG+g4SxZ2ltk7q2kzOX2NBZ5YgD9
	ulWGpRkJSDsKTaPQNjY8E2FNcBXZGPqRB2gyWC0u4d0UYVnZw2Ng8Ox7Nw6NGE6LXGSzBufOhsU
	Uc1zCcDXRkLeHJfAqoQ=
X-Received: by 2002:a05:651c:e18:b0:383:282b:7ac5 with SMTP id
 38308e7fff4ca-38a2c7bb1f9mr15449121fa.25.1772623546573; Wed, 04 Mar 2026
 03:25:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
In-Reply-To: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2026 12:25:10 +0100
X-Gm-Features: AaiRm53skmRHI-RjvqHgia1Wivc8zYgqP69t0Gy83VzMqYB1anaikfyRhx3Cq5w
Message-ID: <CAPDyKFrvMieutLjHkL_dvfm6X9OpLsuGn_SPp1-FeBO5oe-zhg@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] pmdomain: qcom: Add support for Eliza SoC
To: Abel Vesa <abel.vesa@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Taniya Das <taniya.das@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E2AC41FEF45
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270993-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,msgid.link:url,mail.gmail.com:mid,linaro.org:dkim]
X-Rspamd-Action: no action

On Mon, 2 Mar 2026 at 14:29, Abel Vesa <abel.vesa@oss.qualcomm.com> wrote:
>
> Document the SoC specific compatible in the devicetree bindings
> and add the driver support for this SoC.
>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> Changes in v4:
> - Dropped the GMXC and NXP2, as suggested by Kornad.
> - Link to v3: https://patch.msgid.link/20260224-eliza-pmdomain-v3-0-6e13d3aa70a1@oss.qualcomm.com
>
> Changes in v3:
> - Picked up Dmitry's R-b tag for the driver patch.
> - Re-worded the commit messages with better explanations.
> - Dropped the MMCX and MXC entries as they are not described
>   in downstream and not used. Consensus reached off-list.
> - Link to v2: https://patch.msgid.link/20260223-eliza-pmdomain-v2-0-23fb87eb70ef@oss.qualcomm.com
>
> Changes in v2:
> - Changed the MMCX and MMCX_AO to the PDs with CX parent.
> - Picked up Krzysztof's R-b tag for the bindings.
> - Picked up Konrad's and Taniya's R-b tags for the driver patch.
> - Link to v1: https://patch.msgid.link/20260216-eliza-pmdomain-v1-0-c51260a47d6d@oss.qualcomm.com
>
> ---
> Abel Vesa (2):
>       dt-bindings: power: qcom,rpmpd: document the Eliza RPMh Power Domains
>       pmdomain: qcom: rpmhpd: Add Eliza RPMh Power Domains
>
>  .../devicetree/bindings/power/qcom,rpmpd.yaml        |  1 +
>  drivers/pmdomain/qcom/rpmhpd.c                       | 20 ++++++++++++++++++++
>  2 files changed, 21 insertions(+)
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20260216-eliza-pmdomain-dd10911bd4e4
>
> Best regards,
> --
> Abel Vesa <abel.vesa@oss.qualcomm.com>
>

Applied for next, thanks! Note, the DT patch is available on the
immutable dt branch too.

BTW, in regards to the immutable dt branch, is that something that you
guys are using or should we consider to drop it?

Kind regards
Uffe

