Return-Path: <devicetree+bounces-273709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAu1L/15sGnLjgIAu9opvQ
	(envelope-from <devicetree+bounces-273709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:07:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 334CE2575C0
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 21:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63D46308A263
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 20:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E1C3E8C59;
	Tue, 10 Mar 2026 20:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A81T6Fu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA9B3E8693
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 20:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773173160; cv=pass; b=Sp+4ZiANbW70E/QkQgpKI+S57QpcTNMVPZf0Uo1TH1OTL3RrbjJvHuAkqpcCbKUbasghH1CtmqXZ0WvpMLAwjd8SDFO3dF53H2ZRJLNQJffXfugr+Qse411WFFNvfJ3BvK20r5BaQA4w6578WZF4qIVOvwuFx9zTG8AkuXXtky8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773173160; c=relaxed/simple;
	bh=yezyjNt08EO4rLNbf8RM2RzmwHaocfDMLvlwLMlLuy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HeYMr3flRNauR04t2Jem1XBY4tc1/zCUnX3j6JwluzZVx2HLjapBbBZCt+X2ewSFM14BpkVMRV7WIgijdvehPmRWLXA8InoXE0xOsyw5m+ZQO5wg7/72adj+r3ArlAJAkMwhKa4GsBSdy9XhXuYeXA6UD5vW83WNk/QUR43+blo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A81T6Fu9; arc=pass smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5a12cd0bcd8so8157972e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773173158; cv=none;
        d=google.com; s=arc-20240605;
        b=a4/T9LdqihTI+NvVLozeeDc1hJ0utFSPBcF1q99Fh2ummOwihhbpzCoEUbqfZUfYOX
         73q1TV5I9qoLihSdEaHGzuTI4YfSc+Nct9V+i55m5FQQSRTjgw2lFpIBXk9FIzk/5jq1
         4e+sIXKAj/5yRPABXEGZpulG+bjuBSndV0bNfkOWKr+Fj3QieZegP3feNuCMvXlSDhfJ
         UQPPjOD5TMbnBMrAsOxOpmVxNLcOE9hojZtPItTg/EaZMrp7eBRp6vURWj7ulUUaa/tU
         ++oL7pBUegLOH2HZTRN1TNdKl4ij8GHq1vsJqxq02kYX9HDXwn1dk5cn94ZpNeeEhSHI
         7X2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pQIXMNQ0k52fsARofvqfUmvTDMoK9RXOBJmQNC6ddnQ=;
        fh=EDDnLzUQsuNCUCKxTeU9EG09uFv9aeQ4/x5Kl7BtibE=;
        b=NWn4ViGgZ8wRFZc5UCRrrgUhuDg0LCF5sFJnRkfcnD6DqI1znJk9IICXIu7P353mX3
         VJYzvt6ptuncx0qjSinn/BXz/SdIsUbXsnk5NCdt6unYBLeju7Yu1KWs2zLbD//Si4Bk
         AYcAlot1omhDbzMEUn3b8wAiexnvuyYMBGdJ6eehvur2NtYS5j+6rAbvt9OhR9+mug01
         nvut69sv5W+OP5LKsdHcWPolG4XFF8aoSNP8Jo3QQmq/60EbP68X5ihdoSbF4njcAV/v
         RlFf8aEv8EqKPOujExWmf6TfJP5iT4SVy5hCzzArwRkrs9R8JZw/Bd1keFyhZrz5LVje
         fUog==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773173158; x=1773777958; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQIXMNQ0k52fsARofvqfUmvTDMoK9RXOBJmQNC6ddnQ=;
        b=A81T6Fu90tE2d7aINcwxIooqEeRxzxvPyJVvnk9Q8SsLzCkYaLcmyYwSGJqjvCpH3k
         IzlFaFD0L1hYTS5v+TWuN22QrekBBncbbCGMeu7pZ606+DVIzo1pY6krCVcC0NpqZqa+
         97yhb+9/8y8R4cJMC0el94KG9vnkwVSi+kV4bObO00WsF8CSIGw3FSmHmkovk1T2GbZF
         3G9XB99nMUbAaKjdQ32J38Nop13AxC3utDRFM3j2jiR97c0OxeW/Bh0fmLLyj+Scnq95
         C1CL3Owtt4cKJNQ1X6PLZkUchARdKtc1TCXVsUKRjnxNB6z9k8dvzRdCBYdWE0JLaeEv
         TabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773173158; x=1773777958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pQIXMNQ0k52fsARofvqfUmvTDMoK9RXOBJmQNC6ddnQ=;
        b=qQRMbPLkldx6oEiyMIzrlN07y/ujRAl62VE9FEr+uweJK5INBpQL8neMjBi4IgcKIA
         7/ukL4dnXQXe3yRtRuJg15sJaqzJzC0DgJMotwSWif3sOLE27whTDoklScuXmUnPKoB0
         pvZqKnpH7DQllIGCg0scuCsfj4CHdDGzjsUeB9AP7BFhgUN6cnf6ZGKYJt9wQwSxmyB8
         2ENXL1BXmM3659gMdm5TZqmrE0x47Hh5SrS80r/0EDFvC2IH2sG446g+iFvMMaMuf47g
         DTloTX44tt4fGCB8xfRvWbZ1XWmUGyej2MMJ87WCCt4nQdAEPJdhK36S5v3Q0NdaWWbS
         oTfA==
X-Forwarded-Encrypted: i=1; AJvYcCWg8bYleoBMPQa7QTitxTivQ7LRp+oSiPuEW+V3meZ0uXzF1OG6SwKQICQAKYCWT9mHq2v5Szw/pm33@vger.kernel.org
X-Gm-Message-State: AOJu0YyKOd7b8xP87PXF+UMkHk0qrA1o86STWkAQa4wT29Qh8tiBNXNX
	LR/fp1tr2QkB1HrDEF8EWqheAyyO8JhlrFkvWm1SwNhJxE2QK2lQvG2ggxXLNDprTmCS6GxtcTS
	haHKU/HwR20WRnXHG6h8Se+bqZtaqBY8=
X-Gm-Gg: ATEYQzwZn+G4uzJT25Wu0m+wuoAa3IQCpNWkOU7/FbnnCuvAlC3yL8QD6rBeR8IjwYd
	7rTVrEPGooeIviLTIljDsHNkGhbh22GOX+/P/CGPk5vXFpk9uZ4BPW2Ff5NVTD63pTVAvhQsDtk
	vxHLwsa5E2KiRtf02YA0AS5D9auwpiqRGNLKZV/BlIHbUuhif4QgoQSR83EoxBXApt2ruZXjPFO
	awrgTKp5hI2dSXKIZdZjy8RuBROi1CY1JCTt76YPVwUVVKkP3XanPqjYlqFLx84z8mgm6G6HKG8
	GBQxKIOzcVdH7cYGF3qPk+uSsUrXgRw5t4kjT1FQDE1YOiM8ba0d1uptrvhvmeEXijLg
X-Received: by 2002:a05:6512:608:10b0:5a1:3f3f:a299 with SMTP id
 2adb3069b0e04-5a13f3fa3a2mr3200287e87.45.1773173157485; Tue, 10 Mar 2026
 13:05:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219-sm8550-ddr-bw-scaling-v3-0-75c19152e921@gmail.com>
In-Reply-To: <20260219-sm8550-ddr-bw-scaling-v3-0-75c19152e921@gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 10 Mar 2026 15:05:44 -0500
X-Gm-Features: AaiRm53YqtD7m1k1WfcVh97y8PC5B6LMFnLkyA1AYIHdfdl0-cKTgK4_AfI5oyY
Message-ID: <CALHNRZ9R1XaYWeTneZmyAvGY-s2-rbSC_=bSV-nC8_zU+bGLqA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] arm64: qcom: sm8550: add DDR, LLCC & L3 CPU
 bandwidth scaling
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Georgi Djakov <djakov@kernel.org>, Sibi Sankar <sibi.sankar@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 334CE2575C0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273709-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 10:07=E2=80=AFPM Aaron Kling via B4 Relay
<devnull+webgeek1234.gmail.com@kernel.org> wrote:
>
> Add the OSM L3 controller node then add the necessary interconnect
> properties with the appropriate OPP table for each CPU cluster to
> allow the DDR, LLCC & L3 CPU bandwidth to scale along the CPU
> cluster operating point.
>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> Changes in v3:
> - Squash the last two patches
> - Link to v2: https://lore.kernel.org/r/20260218-sm8550-ddr-bw-scaling-v2=
-0-43a2b6d47e70@gmail.com
>
> Changes in v2:
> - Squash first two patches
> - Update opp tables in last patch to match how the downstream driver
>   parses those tables
> - Link to v1: https://lore.kernel.org/r/20260207-sm8550-ddr-bw-scaling-v1=
-0-d96c3f39ac4b@gmail.com
>
> ---
> Aaron Kling (2):
>       dt-bindings: interconnect: OSM L3: Document sm8550 OSM L3 compatibl=
e
>       arm64: dts: qcom: sm8550: add cpu OPP table with DDR, LLCC & L3 ban=
dwidths
>
>  .../bindings/interconnect/qcom,osm-l3.yaml         |   1 +
>  arch/arm64/boot/dts/qcom/sm8550.dtsi               | 367 +++++++++++++++=
++++++
>  2 files changed, 368 insertions(+)
> ---
> base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
> change-id: 20260207-sm8550-ddr-bw-scaling-b1524827f207
>
> Best regards,
> --
> Aaron Kling <webgeek1234@gmail.com>

What is the normal merge sequence and window for linux-arm-msm? I see
several things that have been picked up for -next recently, but none
of my sm8550 patches that have been reviewed / approved have been
picked up yet.

Sincerely,
Aaron

