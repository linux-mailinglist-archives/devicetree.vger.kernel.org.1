Return-Path: <devicetree+bounces-323411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J+h6AkFZT2rCewIAu9opvQ
	(envelope-from <devicetree+bounces-323411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:18:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5009C72E29E
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:18:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="jav/Zp8M";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323411-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323411-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 479403146C14
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104C43E8C65;
	Thu,  9 Jul 2026 08:11:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF04B3E7BA0
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:10:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783584659; cv=none; b=Hn/ynv9T2oWn+pEugF1rtI5rRqGlLWHFiE9y6lwSFd2rWyoc9SHKWidYIlsqiaYwnWfRv8+n8fr9zOeuT/D50kcTjbkP6MSaEC24qfUkyM5dhj5GSIiFAptI9/a6LbWxPZ9xVO9lRP1vNcQExmkuhdUXy6jsBQ8Nd61WAmsrgK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783584659; c=relaxed/simple;
	bh=++1bDEraC9c1082wwl2rgOQSuEPLaKYWoXFtLy0XpO4=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fwnj4olh5T5Re1TRt8zD0JwwTmdPKC7BaybqV+q0luLyXlhOdUl8VfLYHRZQspzhOWzm0YuVhwsyoyEDSjISIfuNwsxqC48c3X/l0o3bwiwHXfkhiJF/u1OQ3qZ8KHQdpuY0I2tp1JP9JEelUtKd8Ax7xr+mpQbfW4cWHAmt5dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jav/Zp8M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C649C1F01558
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783584658;
	bh=U1uas0bVk76zTawZ1MePh/a0JmsT4DBy6Ise3zIftJc=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=jav/Zp8MtQmjZG/LF7xJqeH8zZc78gU24IYeMd2xg4rggZBA9jANp8TDkvUiq15+f
	 bPzukgIVz+YF7uHPnQ3vSkDi7lVnGKtCPDUOlqt2TcMpKtnsH7Moazf5RrBAI9PsUg
	 57K/K0LB6TTfkY/clrO/ZxMb/iVpwsurb84lgeeb0cW9nJlipXfaeQ2qJiF0yAdnxD
	 31f90y29Bg/CqB24rc3Jxfgky/tK/Qu+QzUgRJUmwnlHODxEbsjwTMM0wrdOXLYpBk
	 Xn9SX6cR1JsJ9d0tJVyWsga9TQPHzdQZm0gKWqPs1Qh2mi80oUFY3vRCubihXdzikR
	 vlIMeDapjqa+g==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-39c7ac9b8c3so14183471fa.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 01:10:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RrhkKRd5FoJn412RX+MHfw7v73Iev32wx2UUVxmsTs/O5saZOteVWnET3WhjyP76v9HjzjxDOA4qgGI@vger.kernel.org
X-Gm-Message-State: AOJu0YzeBOp/4q/oxcpvCRtYFLE4mCTc0fLWon2tL16CPbaT3uhS3OKg
	IuqKqcyXndNUNCTLUn92NIa/oEcC5eWgHMdO2nB/pLwnK74YbVxMpZd4lrqixu5j9qakMVu8qaD
	Hg6WkCNYBm6GMHT2wbMHPbZoGIBGaN1bsPt5HaQRNPA==
X-Received: by 2002:a2e:a40c:0:b0:39c:6928:9b6e with SMTP id
 38308e7fff4ca-39c799e4f2amr10112091fa.29.1783584657537; Thu, 09 Jul 2026
 01:10:57 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 01:10:55 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 9 Jul 2026 01:10:55 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260709080848.4070338-1-shengchao.guo@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260709080848.4070338-1-shengchao.guo@oss.qualcomm.com>
Date: Thu, 9 Jul 2026 01:10:55 -0700
X-Gmail-Original-Message-ID: <CAMRc=MfidKTSvmNHXD+BfjShhKnoyBDiKSW6773L288DaO9F2w@mail.gmail.com>
X-Gm-Features: AVVi8CcskXj4_C2iJTaNa4YePoZCMSdxyCbEBN9tzhQOA5oQA3jWFuOwiv7DBT0
Message-ID: <CAMRc=MfidKTSvmNHXD+BfjShhKnoyBDiKSW6773L288DaO9F2w@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mailbox: qcom-ipcc: Document Nord IPCC
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>, Jassi Brar <jassisinghbrar@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-323411-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shengchao.guo@oss.qualcomm.com,m:mani@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:brgl@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:deepti.jaggi@oss.qualcomm.com,m:jassisinghbrar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,oss.qualcomm.com,gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,vger.kernel.org:from_smtp];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[brgl@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5009C72E29E

On Thu, 9 Jul 2026 10:08:48 +0200, Shawn Guo
<shengchao.guo@oss.qualcomm.com> said:
> From: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
>
> Document Inter-Processor Communication Controller on Qualcomm Nord SoC.
>
> Signed-off-by: Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>
> Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
> ---
> Changes in v2:
> - Drop qcom,ipcc fallback from commit log
> - Link to v1: https://lore.kernel.org/all/20260420040141.1247612-1-shengchao.guo@oss.qualcomm.com/
>
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> index 3839e1f5f904..a378fe8c7148 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> @@ -30,6 +30,7 @@ properties:
>            - qcom,kaanapali-ipcc
>            - qcom,maili-ipcc
>            - qcom,milos-ipcc
> +          - qcom,nord-ipcc
>            - qcom,qcs8300-ipcc
>            - qcom,qdu1000-ipcc
>            - qcom,sa8255p-ipcc
> --
> 2.43.0
>
>

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

