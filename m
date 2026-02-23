Return-Path: <devicetree+bounces-267453-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABu3AMNgnGntFQQAu9opvQ
	(envelope-from <devicetree+bounces-267453-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E33177DCB
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E78F306B9D0
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53BAD283FD8;
	Mon, 23 Feb 2026 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s3+GAuxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD75281358
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 14:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856010; cv=pass; b=SFqXXh2P2iw9FmX6R7H3HFy3yXdTMoKmIpp+G9LTWvN2UUYq0X8hZhr3qggxMXufqU3MAMKF4Q+A6jZXbJDtsHdl1SZLG+++34gdlnFSL4Im5TJzZMN0aN70xro+vfQyhfYuWCYkFbWAIVHsbOSMX1ySYrsyhWjF5jruT6RFuWM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856010; c=relaxed/simple;
	bh=DEy3igJL1rnXb1XQTLdcuyQYF3Tqk3XhzqptPi+Dy1I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HFOWwaWJPWhGzkCCoanA2Qm62ZZyi0X4xoaPxip+oDVuLPcfOWFD+STiD/avFQOhQOR555KATNr1m6oukyQvC9uLeA1fh3pOGzzrQhzGBOtfiB0WerdqfgchiqaQi2I4jsl0pv7TcJ9dRf/mQw7o2ChFimb2Y19Pj/yiN9s14Ng=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s3+GAuxb; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-59e6491f1a2so4943282e87.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771856007; cv=none;
        d=google.com; s=arc-20240605;
        b=lCF9VneO+bLfaGhvlR3OcvvU4eNwXkWZppU8wi/2tEEJdnxyU3UF54vld1BSOBaE3j
         z9JpS4QLxAICsiJ49MWAptU5vwVsNVRLPXlzU7TENP6wBDo/ttFp7AfBuHbN/WtDkeib
         AsqIOYYmNdXs7KOSL+Oxgu5cqUpkThXZ2KeTbCCBNBlP96fZH30yBAvKpMHVN5KOqw7F
         /35W2GR1GWZDSqT5+gJPqE9keyBW75mk3VQEmccmdSH8/oSt2VxNJVVRwCZeueqKCcNP
         Rk23ln86KmXy4ItOPtfBDb6KboTmDteOhpRW7CrpjhL4iKbiY6BR6LjJCpeL6a1xxpzO
         alaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        fh=5i1YMijUQgVmIpq10KbtPGVm//H/VOJPzkSSGwmizdM=;
        b=GYl1KXzdQ86BmyAAcCPt0lv+8TTjodBYeP5E+rOeslH+YiLyeXXtHjdyqTgJio8dGv
         Rmp/IPcMRsh5iclxXOSxTFS/509XDbSoMf6WJ3TFVSr8FiNwd6D2DXXyE5uQmgGXvTQY
         vuBbtcXfaurpDusIZE+IrXMXs0z/0273p9tG+KJyqK5BChJAe5B8yfrMMx5Wh9tDP+A5
         srFPKN4c2praCFzDyyQ3/Kh5J1G7lIgFrxVrYdKIpRF9UHihijkub6HSSldknVC9rM2O
         OVF2BU/X0RbHIkw98uPsJax54czht61IWF6hvcZCBbHWIZHsox6/SeWDuNVvoj/XJMDP
         IZbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771856007; x=1772460807; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        b=s3+GAuxbKrXYFcFtPDerz2EAOBfCPm+22uloOdyuAScdQJMDZVVPW+PLkpbjMPrnkV
         UTTRUzQh/jRRK4syYmSJUCiUL/sfKm5RoPvKGL8JxpBdATZ7uNVv2f+wTFRJZ/V3IKkA
         1rqwe0X0EloAucZ8iDUqcbBDAJldBpeQ1Y3Ckp7heEbHtmZe0Kvwfp5ZynXjKgFZpvXb
         vFx4ojCMqbn0YLSSHVWWwSr7YoM6RyTs1x4duUxwfnlBo6sSdVIP+SrIOCHrULlbU0E2
         x1UNluqQo6TVxYzXCGW9/o+nXno889PdiXXnoCZBJ/+0lFQxNRipr6rJgnQ5/ilzyrk+
         d+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856007; x=1772460807;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UcNIiszEKvIE+Kf7TAf++7dJZgkiPPqma20oF8iNSw=;
        b=XfGCuUElOLYsZqlBTYCuN4n00H4NxH7Fc1ZrCmTxVa2Uea4LUkRC0I+snA9Kzzp0DF
         06aZtXXYJA7oeFeZuw/7cygDCMzN6Le40cfI2wc9WeIcwA63qmaZydsPVOhlnZWrbp1R
         rAfJa9mpvXfBlZ6huSj3hV91bUex+5eoT+iaicL5cFjZpaV9bGUpkZGKMCtGxMWUvVoj
         0Ms96czXFxKoozxYsBYD6hzX+CGJ+qCPjcLAL8aJucbFiHvKbZVqz1SKYK8fbT6Mkz+9
         EM8Jl46LaGCmE+73Co8OwNNjNN0Zt6yEwlaZ47Dk+CAFFcHpV9TW7K2FVtjw218ylrVY
         amvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0CqbTYSR8WpuASO0tQmdC2nlmhTOCaXoegsc06Pyk+zjBiUxaXdXpOj2cA7QkoBeLbjAs88EuwCSQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5NC/bAhk+tgCLbWWE1B1pKMXjt2tbsvkbTngBppY30J4EI16e
	qbwZPn2LiSPIiJr4uv3ghG9BEjD9iNtkEdRunSPVqOZF6qDjuk2fQGgc6HrThH2C7T+rzl+0evN
	frCG5cNKIu+syI24vu14ejz0cgNRUngEGSqioJMCu1LulHOeLUNXw
X-Gm-Gg: AZuq6aKamvRrhAhzulF01CITMOyixq/+0pot5ynolPSZCnn5B+RMIW5EGrBMxsfdVto
	ScStWr97u4mnda8zkU+pijFSiS9xrfHjXS+CUNrWTXr84MPyfYNr2eJEJ2Sx1ikmWZlxUQ4zCm3
	mALs6MkjJ3ckDhW8zAk2h51XmzgqAHUAFjHZPF2PJr0qHMfBtGmi7+L/OL5F5p+ZhGi4exnb9AZ
	SpFbgiwvWLp4NoX39ff7nnbjHWJUiUqzkaUu9LB3nuFTHww7KYUBBIZvU2skooAfjzrlVOtXCIi
	j6d5fA/W
X-Received: by 2002:a05:6512:108c:b0:59f:822b:b739 with SMTP id
 2adb3069b0e04-59f8abde44cmr5314261e87.4.1771856006894; Mon, 23 Feb 2026
 06:13:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-0-ef83b09325be@axiado.com>
In-Reply-To: <20260206-axiado-ax3000-add-emmc-host-driver-support-v3-0-ef83b09325be@axiado.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 23 Feb 2026 15:12:50 +0100
X-Gm-Features: AaiRm52Jn7GtelEGkOZ9XPfUniIrpYcIWOFdBS3zcfWiZwJDEnJ15M24z8fGJdw
Message-ID: <CAPDyKFr-N=P1vKSHGtOr1surWApBUz630v2xsBD+5KkPWaPZbg@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Add Axiado AX3000 eMMC Host Controller Support
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, Prasad Bolisetty <pbolisetty@axiado.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Michal Simek <michal.simek@amd.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267453-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 73E33177DCB
X-Rspamd-Action: no action

On Fri, 6 Feb 2026 at 09:23, Tzu-Hao Wei <twei@axiado.com> wrote:
>
> Axiado AX3000 SoC eMMC controller is based on Arasan eMMC controller.
>
> This series includes:
> 1. Add bindings for AX3000 SoC eMMC controller
> 2. Add arasan sdhci support for eMMC in Axiado AX3000
>
> For platform device tree change, we will send a different series of
> patches.
>
> It has been verified on AX3000 platform.
>
> ---
> Changes in v3:
> - Enable SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN quirk
> - Remove dependencies in b4
> - Link to v2: https://lore.kernel.org/r/20260109-axiado-ax3000-add-emmc-host-driver-support-v2-0-934f1a61f7c0@axiado.com
>
> Changes in v2:
> - Keep host controller changes in this patchset
> - Use pdata instead of mix compatible string
> - Fix coding style
> - Link to v1: https://lore.kernel.org/r/20251222-axiado-ax3000-add-emmc-host-driver-support-v1-0-5457d0ebcdb4@axiado.com
>
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
>
> ---
> SriNavmani A (2):
>       dt-bindings: mmc: arasan,sdhci: Add Axiado AX3000 SoC
>       mmc: sdhci-of-arasan: add support on Axiado AX3000 SoC
>
>  Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml |  3 +++
>  drivers/mmc/host/sdhci-of-arasan.c                      | 15 +++++++++++++++
>  2 files changed, 18 insertions(+)
> ---
> base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
> change-id: 20251222-axiado-ax3000-add-emmc-host-driver-support-2cc84a8f889a
>
> Best regards,
> --
> Tzu-Hao Wei <twei@axiado.com>
>

Applied for next, thanks!

Kind regards
Uffe

