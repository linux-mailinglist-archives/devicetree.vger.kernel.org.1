Return-Path: <devicetree+bounces-246490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DFACBD2F1
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:35:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 967CC300957E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C68931A54F;
	Mon, 15 Dec 2025 09:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ijq9ODai";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d0FOiAoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08FE314B6D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791330; cv=none; b=pma++Jn7vmJTLjTUWmgMN8s6syDSJ2GQatrxdyXvl3EzQtI6UuMFcfkiTK7uLHCZIiT6SGJt6QBzCTq2G1HSBy8i4ORuOjWJAUMuJSnTMCNawUJIUX4mJOD7/OGD0CHCr5/MFBmKkerc2hHlN+UGSpI8C/T2ZAjDtfzfWdNf/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791330; c=relaxed/simple;
	bh=MJWYNoijKACZhf0cDJh5RBkcwi5oPSTkAiX0TJj8NVo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cM1vb8nNKtxHce5nKyRrsHJ8atgCdJ5dBr7rZt6TtXi7lIVqikpyP79XdW1QRYl4G3SpV4hWoqWhgYS71FibSV3KChCZNbe8C+CEirF+JjWvU/peNFK/DcO44oId7zc1YQvZHWBUvm4shntwxahbroOEpY/bWMbcFpGhIiUsQYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ijq9ODai; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d0FOiAoE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BF927Wt2065196
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:35:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MJWYNoijKACZhf0cDJh5RBkcwi5oPSTkAiX0TJj8NVo=; b=Ijq9ODaiLQHimDCV
	3NyxCwarW9SABgTjzCRYb7Pz9S0RSJfBybmHHAjUlPpYMyanxd4+5XwRERZBMa2f
	mQBT5qLDPJ/n/qs80MCHGIwr1xcHp6JCIvqLpW1KV9fWXJD8K3aDyp54ozt738TW
	IJ+Cf/4blAiP9o5zUrojJCM7rJL0xi9xgQGsxtT9qN6msV2qF+8Mr4NBmzwWwZBN
	uKm1WBUl98omqbAnbNizu8J4khs5KXAnCk4SOjcRP4ZUNikuv0TVwYgXBocqBH11
	ATEzQn8TwiQXXuf8qQni4KuR+C2sk6vTzNS7+QVOskTbhr4Rj2vqoAWCYcyj3N+L
	Sgd8+A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11afc1cv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:35:27 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a344b86f7so26090526d6.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765791326; x=1766396126; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJWYNoijKACZhf0cDJh5RBkcwi5oPSTkAiX0TJj8NVo=;
        b=d0FOiAoEAjpE9vJ0J6j87OTWzWzu2hg1qyVNRguXhGR19fl8q3RmPBtiqhWcklZd2T
         UWsyKZ008hD6A3AxmUK3UklHMzktyk/ACGVzZ+XfyPAGk9JClSiYFX2XWReM6YEyUfIG
         PHBRZSdJyMjClPed3Wx7zCVKjlcQiHnLwM1jiBia+mtR1iKWsBkc1JmngWf8ny59go7f
         /FrbVpknxda04xhKOAYcaz35tdUHR5cQHDTN+wWXQMpo/BYwwFSMDL9mBydHFExXjN9p
         kw1oLwAIeHtCCD7XIyerhflgzSsH4gpaCVTj3DNUyP4pUw4+TE96iUmslWJGlXb3w9Sj
         ZEWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765791326; x=1766396126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MJWYNoijKACZhf0cDJh5RBkcwi5oPSTkAiX0TJj8NVo=;
        b=r+N+gius78VoUtyh5lqfPtpk3YPRlGiZ2OtuKOxwfucb9Dn5X+k0FbYNkwdsXsj+et
         Q0gMgHz6IkELO/e3zxpbs5F7SpbuSLSFJNMMJ51mc4MUSyXhJxQWyXzvtjVwvJ/tocmH
         S5jCYj8QkMfwRBJJCnwmaixEheE6h4mRRBZw4Z6K9eswSYfDW35wCRO316zSseQy2K/p
         CAkdT1ZK1iTh8V9WWtfF2lzWI6k4hYOQ1ukpfzg9HTzvv36aUCoKqUV0UqDEPJtoSZXS
         JODaKmMK79NrQg2FErFgH2fywdL12SN2K6Lj0j9xkG1uWkOROPAVmsnShgiuFAhRti35
         9TtA==
X-Forwarded-Encrypted: i=1; AJvYcCUBmN6PHKWSwirbNuIxPKKuWPs3yRN2EEdUUUrqbjoax1Z0CUUCIPlgOF+r6yq+UCwNZF24CeRU9hzN@vger.kernel.org
X-Gm-Message-State: AOJu0YygnRDHrC/3R3AGvWwXhsg5pT7FmcNylydq51yPpUYSiRuFmj1a
	uZZmat1b2x8Xp2yF+2HBrwC44nPE+GRo6FN3RT0TPpabGw7qklOPknLtuyKCLpdgDXmFS/eskk0
	WfDKohcEwPIl8a3cWr2yuGw8Kd3Puy1OZ7TQEN/ndOQUihFNAKoIePbgcpEH/oKESdv2fbHvy4l
	3sLjPbWGIXz9m8ZZW/LST8p0+RvYfFdDcyHXbHifqzpy56iEVaVI2q
X-Gm-Gg: AY/fxX6CVFHIT+ARuSZsw8hEzdV828mGlj4J0iTmmgp17y9VxqFXjVa9WlsEumw2Koz
	vA1bVL/wF2zp289n5R0YVjT3JMX2gQL/nn4qS7j2yUqQYtRbQHxIa+1ECRzGKqYHTe9R89FFGHo
	TzvPrImcGOhbeLCGwSmTkYAI8TYahOaeJnj3WWhFYBrWd2fakMseMWsUHu90qn3LZ4YrEffBDq+
	WCgkEkUHtcAOPoArGz2cBpZM4k=
X-Received: by 2002:a05:622a:5c96:b0:4ee:4a3a:bd0f with SMTP id d75a77b69052e-4f1d05f3245mr145330671cf.69.1765791326566;
        Mon, 15 Dec 2025 01:35:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEOKuYvRw82Q/pFKFm7NzaaRCE+w/qvrke/M6Tab+zjDyrCQWqXZJl5TcsJzvuk81rmy2MB1DoBlhmYev5gnuM=
X-Received: by 2002:a05:622a:5c96:b0:4ee:4a3a:bd0f with SMTP id
 d75a77b69052e-4f1d05f3245mr145330521cf.69.1765791326121; Mon, 15 Dec 2025
 01:35:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
 <20251114133822.434171-2-loic.poulain@oss.qualcomm.com> <aRtbwK0Afo50Lh0B@kekkonen.localdomain>
In-Reply-To: <aRtbwK0Afo50Lh0B@kekkonen.localdomain>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Mon, 15 Dec 2025 10:35:15 +0100
X-Gm-Features: AQt7F2rp-ZrChXGlmL-Mm2N-EwG9Tf3xPbpi4Dm5-uAespUvYTGXUcc6g_5CJsc
Message-ID: <CAFEp6-1Tdmr5v0r+q0qeOG6qqA-hiBaF1iTEcmhBA0oTjLgbgg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] media: i2c: ov9282: Fix reset-gpio logical state
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=TtDrRTXh c=1 sm=1 tr=0 ts=693fd65f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8
 a=y2W2zGIOAgzQDGN_av8A:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA4MSBTYWx0ZWRfX9rXklaY8mBqw
 EhPRu3Ilj/FTIfwtnEhNgdMan3lWG0yhXs6X3zVXFn38TLDvH6RQaS/h8NyF+lcxZk8wS4eto22
 JPP/XkO5AEwrwc9koTLcbIuBGOOALuI0RHXmi9KDzxbZ1M42PipWYFHykmSypXwgABWSmUynQ+B
 K83eRrfooCQ7NXZcon3HLCGFEKbJvQkM4/dZLtDf52EnI+I/TZhasTrQLGIJLYnS7cpGUcPl6SY
 lZZV7bVo2Csbhpfv33FhyZXwVgOAmG935nhfoLfir0gFRL5JR2KLmePxH26bzR2Ki8pUTU/9vFS
 wnxb90wFFanzdsEBVBLrMJUgzzeo4WCExqcL4EpiItMc7X1TKm0it0Gd5RXVPaiVcqp0ZtTzDjx
 0RG5sQUyBDstgQisP767fk0WVA11aQ==
X-Proofpoint-GUID: bt7yrSfumMlEuahgMfQG7fCSrglaeFEn
X-Proofpoint-ORIG-GUID: bt7yrSfumMlEuahgMfQG7fCSrglaeFEn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150081

Hi Sakari,

On Mon, Nov 17, 2025 at 6:30=E2=80=AFPM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Loic,
>
> On Fri, Nov 14, 2025 at 02:38:19PM +0100, Loic Poulain wrote:
> > Ensure reset state is low in the power-on state and high in the
> > power-off state (assert reset). Note that the polarity is abstracted
> > by the GPIO subsystem, so the logic level reflects the intended reset
> > behavior.
>
> That's an interesting approach to fix DTS gone systematically wrong.
>
> I was thinking of the drivers that have this issue, too, but I would have
> introduced a new GPIO under a different name (many sensors use "enable",
> too). Any thoughts?

Apologies for missing your point earlier. We can=E2=80=99t really name it
enable, as it performs the opposite function and that would be
confusing in the device tree description. A property like reset2 would
be more accurate, but I suspect such a binding wouldn=E2=80=99t be acceptab=
le
from a device tree/bindings perspective.

Regards,
Loic

