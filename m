Return-Path: <devicetree+bounces-268626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OBpCINTwn2lwfAQAu9opvQ
	(envelope-from <devicetree+bounces-268626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:05:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4431A19A5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 487393011D56
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A7738E100;
	Thu, 26 Feb 2026 07:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cpSVHs9O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eCAYBsR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF04A28643C
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772089550; cv=pass; b=dchDw4+9ui1D5ZEgfLlreIlqHlvUS2JZNpGRigNHsCNN3+rT2JR1wns4ZkRPkQcb+F8rGNxaeJG3uyjMaUjDi78QStUbRq7wJHPa5DP/7P1FLQ7GjdO6nU2tMtj4TrHCgOFm/MjS03VPhJvlGYn00MS7rdIBVvODDny+NXUSfJ0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772089550; c=relaxed/simple;
	bh=fthQwGFGcr3v5gbtPCMZp9gFbRlGycmeGJ6rhMoXyYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ll25Avgb4GDo/XVqpgiMJjx6+LPhE+Vrn+AcN+L56pPU4QILO6ydzWJoWHAeSmTrJ/O60rdFtcBAEpuus/q3xkr//1uJk5o0TZP9KlSjKcBfpAVDeMoLG5ihvpkcDyKEWCUHbyXrw5WjKfETA+ADQ7XPUAroEenv8cdEDm3kkxU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cpSVHs9O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eCAYBsR9; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4UuhY3776984
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k+P7CghlNIgjxycB/1qldY8eXMaIX8CflGPUmpKbNzU=; b=cpSVHs9ObcHsKfAX
	3ggqKxAEXUPS1VD3qshQZ0rce0/Ew6L8IPvz9t5w4UaBOJI1vzlU6M8/T/FpTp9W
	sgHBIp6RGQQL0oYuASc1K1r5Ifq2e/jT8HbmgIPhNhxF3l9U8llkr/n9Y9Pp/FFG
	l+CaNPpRgdpkwqyKA/bMPHCQsdtWdsxSNZDu61bxcHRjSLfcRbeLzWmkPhvwci4q
	ShFWsBp9qM2MUlI9bAsIpcS2O1HfqpnPp1bDBjsHiaFvk7wdmVxdKCzHc5nrzU/E
	ses5Ly8RZ59i0kL6FFcn+6sRqnM5fTkFxWROQAiNJvBGcgohyjyWMS8yV70glr2m
	/XeO7Q==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cjae0s558-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:05:46 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-6798747187eso5149638eaf.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:05:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772089546; cv=none;
        d=google.com; s=arc-20240605;
        b=iTpSAW2Yv3cRLyGgiKFycyA3QAuAs0c1QD8jRKyGdIGK0MIfCnKj3IlhF3VU7ph67x
         lm/J06To5Ml4DqWnarkCBVXvCujq41RRpHqg7BD5n3BfExHJrUnv140C/f1n/Dj0enrs
         6c4LsVlMtLAIHxfg69ewE2+f8xhJK+Eiu6Fw/3sDWIy5xj1G4dfu6yfQaDui720uDqa+
         geKP89uOtutQgB+tRpzlMXUSf+PjTQwnFGqzLd6h26CciIO+QSnEaugzlTDukgMCI5mc
         7bVdX/L8OpXGl93pZYp9ASqPs9ADDFmeiFeQTMHtdnjtigJjG8Zx5kQvXvou6dalviyX
         cgGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k+P7CghlNIgjxycB/1qldY8eXMaIX8CflGPUmpKbNzU=;
        fh=qacZ1i7nWLjVKXc3JzJgzzuWGAiMMVwFGzEAt1Ze8mE=;
        b=KZ3WO/nkDB+CwC/w5DifjfnMzRftqBADnkQnlZOInwVdTICAOrlcg1XAME0iZkdD3A
         po8FtUEwoh2C03pr/Lkr669BgouHiVWZoeES3R+5imxigR4U2W5harlztk0MMOHRjcNd
         7t5kkA4FGQbb8k4E19HSYB33ypyMxABFF4iBXw4NgSzOlQtirAv8x2gJrxlCOZL9z7B8
         XFgKvdJIMIHU5sAGlO2vB4V5D2M7oMA+wdXf7aBTBarCjvYCYSZt35NwFu9rb60Rq12q
         WB4Tb3ZyUPjChuQIAVQOxJKrVROXUX11rrcG1crXNNVpTxsd3QZbr9/dRE689m+cAaLF
         9aZg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772089546; x=1772694346; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+P7CghlNIgjxycB/1qldY8eXMaIX8CflGPUmpKbNzU=;
        b=eCAYBsR9nsrh8HWI5M6Yi880xAjH3r8+RXU4D4n/Zq9GHf3Cme1WZHljy5NKnWVK9L
         j0Y2jL646uHn67krOpBxnKpWLrnxfljbe2hFANefxKgLjY5RXQ7/+Tsy7cHH/HqOKK/n
         ii9LFcrUFnvFuVDO1uWoeKHdVqqDvFdQJczpJddWoJ3rIp9P4goBhZdVx7OhTvtotlto
         PzmbMT304Tn8K1HSoV8xw7pp6Qilks4IXaO1+T63J6xVJCjPx+E/5eNQDbFS5t0zKBhG
         Iahmip/D/4oRSXaGWZ12FaBKtZQjPoe2Cb1lgTVSULRSQOqCpnu55OY/gVGViw2OhLYC
         Hkgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772089546; x=1772694346;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k+P7CghlNIgjxycB/1qldY8eXMaIX8CflGPUmpKbNzU=;
        b=JRfxxOpnlfzaGnKecK6Bn1Mslc0i1ld7S/XiOaLfckHyRJdLKq7HWGipj1LEJk4w7j
         Clj4geD6a+V4zE44281G7/JkFFatSPBE6sTKsnMeuQuWRsi8Tb64TYkK6edK51Vg83WO
         /6Sm+jYHfAmUBQ7j72Bctg66E1oy0EV7rt55SZV7lOgw9MVrdQPNFo5iTWj6IzP528QB
         U0FP+ysi0hI0OWlqlLhVL3mVu3T0Tmo9xxsIcmiipAMh6fR/Cag7IhsGojZd9OhVIamo
         Rlk3zoZcJJvhgSjBzvdE7KsldqWSkUUOiIyCjJ7VH1wY8yA8FuBrCa0scsCFxVIT9pa0
         /xJg==
X-Gm-Message-State: AOJu0Yz9NxnAaX85902xoc8KMjzWsMtukoFCmZLStLDI3siIg2DLrMSa
	c0kacHzPmp0YNCiXbjAEEJp0/awRE1xUhpr9DZ4Po+cTpnraiuX0+gh8HrwQkFca17Z3VHlWFgs
	SnOkwbXFfizRC2VG2G3oerpMzYqIO7v1kO2sChYrKJ+O9obfVHDc0cCdP4h0N0/PrZypWkR8LSf
	W9wjAFYxbkiDFQKfhWY3XKQlTvijG3kTweF2PtyCc=
X-Gm-Gg: ATEYQzx0YaSi3W4bJ/GHP/jC4EgH8IBIJF7b+TrvO9HreYhQNiQyPdUroXrIdiNmAPv
	BRfWVtTmfkwBSaHuSaSJ5DLVjue0NX8P6JG+VjmNfKIqOChJsyhzHk8mvJsgx1bV0v3LAAyxOPo
	/OfDUbHibj49u7C+yhYK6Rol+JbjCyr8pLyeOe/DP0Pla+3TW7uTP28IaIj+xDBiGWUDMMCjqld
	kScVnU=
X-Received: by 2002:a05:6820:1786:b0:677:4fc0:a852 with SMTP id 006d021491bc7-679f3d28624mr625359eaf.34.1772089546217;
        Wed, 25 Feb 2026 23:05:46 -0800 (PST)
X-Received: by 2002:a05:6820:1786:b0:677:4fc0:a852 with SMTP id
 006d021491bc7-679f3d28624mr625343eaf.34.1772089545831; Wed, 25 Feb 2026
 23:05:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-topics-ahmtib01-ras_ffh_arm_internal_review-v2-0-347fa2d7351b@arm.com>
In-Reply-To: <20260220-topics-ahmtib01-ras_ffh_arm_internal_review-v2-0-347fa2d7351b@arm.com>
From: Himanshu Chauhan <himanshu.chauhan@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 12:35:34 +0530
X-Gm-Features: AaiRm51yZ89kZv0f4gE9xa9boBW5MZ_Co37QxpUC5GHdKH2lI624cxTwISy9vz0
Message-ID: <CA+Ht8=a_fw-u2PLEf1GY7qYLT945OaJ0LeW6K+X2SvSWLqsrXA@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] ACPI: APEI: share GHES CPER helpers and add DT
 FFH provider
To: Ahmed Tiba <ahmed.tiba@arm.com>
Cc: devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        Dmitry.Lamerov@arm.com, catalin.marinas@arm.com, bp@alien8.de,
        robh@kernel.org, rafael@kernel.org, will@kernel.org, conor@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        krzk+dt@kernel.org, Michael.Zhao2@arm.com, tony.luck@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2MiBTYWx0ZWRfX/N94epCQxzyt
 8UIkED6Sa6ohzOTXgEaYWE2WYr4BI6B0IK6Q2J5tyRU/TEgupNSc8EvCgV9Gwo1yLAQy2eApM55
 Rr0FXdsEYnX1oC7MyJl4qEbYYtRuVxeAAGO3ojCLXxB3DJvWQ+5kgbP1hTQX39xtpX26/0D0E+5
 21HRSENtPToK2F38eYOPQUcBYZ0TO2eKOLIClh9oRmdU5smqfbHzNSPIGsLLqRZnG4i2PIHy7xz
 Pwyi5yv2Wyo0zhggUIJzlbaPznpsP+mXOSvhpF/hvmo3AHMoXmUZXveNo7DZknmwY4hkjUw8Y5E
 pNt2CNI0KcaAWn2MXySjxs2u6z/vTTzOXM1ttXpeMJEUk6LzQXc2AodGU30YFf8FkqbL6qMbdIv
 XwbrNPNOKOFIVAWh5qWlHdkBpWmGza7Hc7r6/BusAZm0a1CmzsxlX0w7JGwgKa2c8ZGAqbd185o
 aqcOm451jR7zfpDwDYw==
X-Authority-Analysis: v=2.4 cv=O7Q0fR9W c=1 sm=1 tr=0 ts=699ff0ca cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8
 a=2-EGK2xgfFmwblvCShkA:9 a=QEXdDO2ut3YA:10 a=WZGXeFmKUf7gPmL3hEjn:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: 3ygpqhgvQYgrHftyW7fE-j4FyY9n8uje
X-Proofpoint-GUID: 3ygpqhgvQYgrHftyW7fE-j4FyY9n8uje
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602260062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268626-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[himanshu.chauhan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,arm.com:email]
X-Rspamd-Queue-Id: 9C4431A19A5
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 7:14=E2=80=AFPM Ahmed Tiba <ahmed.tiba@arm.com> wro=
te:
>
> This is v2 of the GHES refactor series. The goal is to reuse existing
> GHES CPER handling for non-ACPI platforms without changing the GHES
> flow or naming, and add a DT firmware-first CPER provider, while
> keeping the changes mechanical and reviewable.

It seems almost all the code is being moved from ghes.c to ghes_cper.c
in multiple patches. It is not making sense and looks like an
unnecessary churn.
What is that which can't be handled in a separate file for non-ACPI platfor=
ms?

>
> Signed-off-by: Ahmed Tiba <ahmed.tiba@arm.com>
> ---
> Changes in v2:
> - Dropped the proposed "estatus core" and kept GHES naming/flow intact
>   (per Borislav Petkov).
> - Re-sliced the series into smaller mechanical steps (per Mauro Carvalho =
Chehab).
> - Minor DT binding fixes based on Krzysztof Kozlowski's feedback.
> - Removed fixmap slot usage from the DT FFH driver (per Will Deacon).
>
> Series structure:
> - Patches 1-8 are mechanical moves only and do not change behavior.
> - Patch 9 wires the shared helpers back into GHES.
> - The DT firmware-first CPER buffer provider is added in the final patche=
s.
> - "ACPI: APEI: introduce GHES helper" is internal build glue only
>   and does not introduce a new user-visible configuration option.
>
> - Link to v1: https://lore.kernel.org/r/20251217112845.1814119-1-ahmed.ti=
ba@arm.com
>
> ---
> Ahmed Tiba (11):
>       ACPI: APEI: GHES: share macros via a private header
>       ACPI: APEI: GHES: add ghes_cper.o stub
>       ACPI: APEI: GHES: move CPER read helpers
>       ACPI: APEI: GHES: move GHESv2 ack and alloc helpers
>       ACPI: APEI: GHES: move estatus cache helpers
>       ACPI: APEI: GHES: move vendor record helpers
>       ACPI: APEI: GHES: move CXL CPER helpers
>       ACPI: APEI: introduce GHES helper
>       ACPI: APEI: share GHES CPER helpers
>       dt-bindings: firmware: add arm,ras-ffh
>       RAS: add DeviceTree firmware-first CPER provider
>
>  Documentation/admin-guide/RAS/main.rst             |   18 +
>  .../devicetree/bindings/firmware/arm,ras-ffh.yaml  |   71 ++
>  MAINTAINERS                                        |    6 +
>  drivers/Makefile                                   |    1 +
>  drivers/acpi/Kconfig                               |    4 +
>  drivers/acpi/apei/Kconfig                          |    1 +
>  drivers/acpi/apei/apei-internal.h                  |   10 +-
>  drivers/acpi/apei/ghes.c                           | 1024 +-------------=
-----
>  drivers/acpi/apei/ghes_cper.c                      | 1026 ++++++++++++++=
++++++
>  drivers/ras/Kconfig                                |   12 +
>  drivers/ras/Makefile                               |    1 +
>  drivers/ras/esource-dt.c                           |  264 +++++
>  include/acpi/ghes.h                                |   10 +-
>  include/acpi/ghes_cper.h                           |  143 +++
>  include/cxl/event.h                                |    2 +-
>  15 files changed, 1558 insertions(+), 1035 deletions(-)
> ---
> base-commit: 8bf22c33e7a172fbc72464f4cc484d23a6b412ba
> change-id: 20260220-topics-ahmtib01-ras_ffh_arm_internal_review-bfddc7fc7=
cab
>
> Best regards,
> --
> Ahmed Tiba <ahmed.tiba@arm.com>
>
>

