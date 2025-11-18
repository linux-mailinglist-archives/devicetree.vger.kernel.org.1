Return-Path: <devicetree+bounces-239605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 584E3C673F7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:27:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 1846E29FCA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:27:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B13A2882A8;
	Tue, 18 Nov 2025 04:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MoqfXrmm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e72afUAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A05C28688C
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440057; cv=none; b=KdVRYXJvbAELHiSiexR/MiBXzaEoym1g7UaDTfR19YvipIuyDcsUjUCzwKT/jtMTM9+WIltRJbliFSFyFnwk4dKiQUf4xlUtL2ocK4HuRSerclpy9WDVGp0oN+nU2g6IdpPV4p94XVFHK3PPzSgA63IBQKKviTvka2PVa0u9/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440057; c=relaxed/simple;
	bh=7r91awU5VLldRKKlpu4/0SLwEa+ljbG3f4dZiO9XOZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M4uJE36CRHQmCd1MuteV4/4Rcp4ztyKqVO8YAI3TuhGBxoHnD1a91PXQto0Vc+VqUuuTYlx4pD0CTfS0RF7oxPhkQVoUqf4iM/EdpH1FMG/KTlf1as15JU8J9BiwC7gvWL+D7il4N7w5KlRuyVyO7jWrvnWzuZVWx/QVhIEYGcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MoqfXrmm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e72afUAj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHJGcRb3916364
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:27:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8hoWYq/2sdspYgKJlIQFUEghEbB4YrfTam2Gk0dChps=; b=MoqfXrmmESqj3s8o
	dUvDF5NYrTnfYnHpApZmuh/8wydi0/DKp+v8+40M8YZHJ3ylCAIdyIQxqSvbr9WA
	ubqTpTmj8aovWxeHxKomjvaQFcEsI3HitX6RDuvbUyDB8AuVBs0cYorNTHint01U
	NUL3hPP2moofJUOWKcRNHYsVHjTATTejo4AZ4eL9TlKICCjSWBCj9Cj15GyTwNi9
	i2kZsYwk2OZx0i33uS98G/tcU/FYBhmTuDRadawcdxNAlbMPyXv7/r6WoBo+mix4
	oT8PGiqPNOZGwfkwOrwS+RXvzMVhPJbBoXNM1iGrTaMhtQcePEPyS6aaFka/TBjc
	/kVdzQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag2fxapa6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:27:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb6a94873so112055461cf.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763440054; x=1764044854; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8hoWYq/2sdspYgKJlIQFUEghEbB4YrfTam2Gk0dChps=;
        b=e72afUAj7KY+VUR3lFO3jZKXI0Qr+/4NmLG9ZTzkmAyHDBLhAJ+Ih8eTRTxZ5EDsig
         vBV9r12FRl65I3tDq1095OOPHYv1/149s2mGX1m8iTzz+Azs4lwjAKYW9ooU2TrIcnJm
         oEbxB4oxuVShEr+BkIpEha1oX7BRyph/MSFXkKHZO4cFdtAYzYUZPGlQkU0o+lKC2NXg
         WB/F+74wX2fgGSII0Ea83PUunHOKmTWSVrxfW7xKOKoSOgHKnJRCuCj/tr6Zjj7aWslm
         75Zy54/kG2GV+cCIY629aDF+DN+avOFa+RtsJAyXg6xlNTVMC5Gdp2cHkbSJwQZQIGJi
         4YcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763440054; x=1764044854;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8hoWYq/2sdspYgKJlIQFUEghEbB4YrfTam2Gk0dChps=;
        b=Hiutp4uQRSBng0dJPzLlkpb1EoBIpBT4oM44X6KBWPjP++hXbffzq/8c5lGnWbxhb+
         XtJJmEL4yoN5xKh3/DEMgt/ZxTuf+aQCK+ZZCUF5OKkfoOfslJZSjW2fYO7/trrPDjsb
         HZo7vEujLVCORl+jeJ9UX7RSHqqWf3j8dmwGiwOlzlPbqX+cCxv+woRAfhtstidgfyuV
         hyksABvV2Yy9WNBEXQCPJKbYcueE5qXoVBKO0ax1wUK/YqcJjdssy6bpzkhZkWTjmQDF
         PddtHhJfJII0l2pMIgY39S40qxxlwIvfmk0csOIMzQLB1LeSupSdRjz268a3XJ0kYIkg
         mfSg==
X-Forwarded-Encrypted: i=1; AJvYcCUIcRm7jvVHTKVRQ5PzPEL44KxK96LbR2gVhm0U+kwS88jB1gtDhq/4/3jKJ6QThu6/9GRG3/yHt8DO@vger.kernel.org
X-Gm-Message-State: AOJu0YyklNDEww3z2K+tzhM5m8p0yUndwsOdiP5rvOZdxwcD8gmAHeI+
	hhqxxVLffZWzkPyuloLJjapz1DWweW/RpWpyDOJfTnhNM759nAp878z0o8NIwowMOjOOyDUO30w
	KfMDyKqKgIE/k3vupOEHxfVJSZn1uSmOi7cYxtI9SkaI7N6cgo84N54rQCE7f2R1r
X-Gm-Gg: ASbGnctkbmzTjlQu07Yzhdlie2r+k8hZuAHciduQVFdiYHeQLyiescfIBzSO1YnaYUe
	W+2Cn5fVeG3RUn2bZZH+0RfQDzp0BnFdu/zw0c4O2g73aN796yREP0dl92xd3iOaicK/4YCXVqh
	XLX8WJ7DbVVbqLF6YziWyZJSQqIk0e5E8Vgvb/f2nOwC8Bp944KEiqFS4DOXf89EjaJWfXm6IFk
	2SvGGo/lEtRXu1++0PaVBmOigumWsoDWUW1RwgvFH2FhRQKfuw/sNfTDhJ/vGE9hpSQpx1sNZBn
	fgp0JzTNCvVrAhlvY4zoJyYECwmHUk7qcWnWSqtbOjJG4Lw+Doae/t0udSzyok5yELrVbTxCV1e
	HjZgZTHFIocjF2/eWtswynT7weFE6rlPNVbiRTJhpqYvvyaimXZLL+56zTSGSEtPAk7yB4HnTcX
	6MYKbP/Y1wBcM9
X-Received: by 2002:ac8:598d:0:b0:4ee:222b:660a with SMTP id d75a77b69052e-4ee222b702emr77345341cf.76.1763440053934;
        Mon, 17 Nov 2025 20:27:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFK34XMALMLhHCXyEM4b9N6S6ILPLJGMBP91uz4eSXchUdD5hGMZY8O87pIcn7bUOAHLZ4fWQ==
X-Received: by 2002:ac8:598d:0:b0:4ee:222b:660a with SMTP id d75a77b69052e-4ee222b702emr77345131cf.76.1763440053519;
        Mon, 17 Nov 2025 20:27:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804056absm3577733e87.82.2025.11.17.20.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:27:32 -0800 (PST)
Date: Tue, 18 Nov 2025 06:27:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniil Titov <daniilt971@gmail.com>
Subject: Re: [PATCH v2 2/4] clk: qcom: gcc: Add support for Global Clock
 controller found on MSM8940
Message-ID: <4w2stmuxwq3bkiipxsvgbbhtjeokhkx6qz2ew4udfp3hzppqzw@bqifexv4xlej>
References: <20251117-gcc-msm8940-sdm439-v2-0-4af57c8bc7eb@mainlining.org>
 <20251117-gcc-msm8940-sdm439-v2-2-4af57c8bc7eb@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251117-gcc-msm8940-sdm439-v2-2-4af57c8bc7eb@mainlining.org>
X-Proofpoint-ORIG-GUID: Cp3obdDhUTzJ1aEvlkt0jxnhyQZCuF-d
X-Authority-Analysis: v=2.4 cv=EIELElZC c=1 sm=1 tr=0 ts=691bf5b6 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=nxiTF959HdLS1GldUw4A:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=dawVfQjAaf238kedN5IG:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: Cp3obdDhUTzJ1aEvlkt0jxnhyQZCuF-d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMiBTYWx0ZWRfX3zkAFFW7LCBZ
 ws1xKpLiETTqehOUH58CKZcgfhs5MTniQRQ7dwkvXnx6txMGvpPpwINWMl2hJGvegCG7hICwK+e
 OUrXf8y6Tq9o5Qg/rgoDxkAcYFQR7gBe7hl3HSrpp4BeJmfV7ReoOIH/3j2hylEC67ZecRkcfWr
 l9gTg7g3UgNH29XW6qn0EwlMMyjVB/PXZwBEUM5RFRCq2z1VQVcLLKpZycR6sHxif2RJ8wbnDYz
 +wwagDaiwfdNexF4N8gStDJrsJ6C2XALh4kwv8fWfF+RtnBZuCBIRl/mZDMItnpYDaE6Amei8wg
 6YZ8/1qCpK9NhEOXj3BAFQrcJPMAV85qeGOnkaXOakXy40dxpUQ6b6f+oQ0f+9pdEINOpMM3cuz
 caJSzjtZX/0RVxrWRfhZPKf27eYMmg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180032

On Mon, Nov 17, 2025 at 05:57:07PM +0100, Barnabás Czémán wrote:
> From: Daniil Titov <daniilt971@gmail.com>
> 
> Modify existing MSM8917 driver to support MSM8940 SoC. MSM8940 SoC has the
> same changes as MSM8937 SoC, but with additional IPA clk and different
> GFX3D clock frequency table.
> 
> Signed-off-by: Daniil Titov <daniilt971@gmail.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  drivers/clk/qcom/Kconfig       |   6 +-
>  drivers/clk/qcom/gcc-msm8917.c | 231 +++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 234 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

