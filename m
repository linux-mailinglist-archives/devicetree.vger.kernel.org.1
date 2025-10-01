Return-Path: <devicetree+bounces-222936-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 649A8BAF9A0
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:24:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C47553C774C
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C805B283FF0;
	Wed,  1 Oct 2025 08:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UDwGIaN4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D912727F75F
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:24:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307061; cv=none; b=VTWyz+MwDNda/TpbhfcdNM2ihNS31fFsKHUVpVH4E0RlEG3+XRQdshiHJs9lLWTvtpK3UNFww00CrRrOpMKZ4Mwiwt4llIjeK54T1JbBzmM+Q64+bcYylJOn0beUak4/K8mNrVI6szIg5fXXyrdcmpb+AWx01aVyPhwy+E07VWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307061; c=relaxed/simple;
	bh=2C9amxCrD4gmuZzRHFFROYAejnvb5hn0iAbtlaA/Ujw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G7j2aEEwNr+p8wP8hO90XZfKTumET6BNtkG0lJtyPWU8wQvCLcghjjXklGPRVC+slxkUfhelymmfOIqFWBRI2SCgoI1tC5ih5J9EiD7VYnKShnjGh1L3TJ2DgO4iC0oxUcDXiO+cKQChS2cR97itzrq9DaHvl0qUo7M7rXD8xZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UDwGIaN4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ULmaik030546
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:24:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jo9b/6mPaEeK5PkbErgGIXrd32k0mUaxbolG0MoaK5s=; b=UDwGIaN4ksh9PcZk
	GXfb2oEcQ333hHiy4GgLWyZSIVW/irxtve1zYmAo+fdXDWic0m/jI8PlrmNroZFg
	miuJrsaTzjVgFo2b4JGjqEHIBanHjhyQc+FAsNB9PHfx8pqQ9qBaUXG3uE2oPURJ
	5e8idrwC9x+WFc2UN1K1ALTuKMaY0N1FVXu1RWrN7M1VSghlnUUBqISONRO1pHxA
	PYcjd8JiPzYh0XHSSQESCFj1TP6nPVdQtyLbXFH31dtpb08Vyk0dn7KqFmVLQSl6
	jo2/xvQnIcpQVbEej/+GA4nv1fdyeUCLaZ0d5QvxW0kMsHNWAdEFxxNqqDTudw8g
	4xPogQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdkkq2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:24:18 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dee3f74920so14234331cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:24:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307057; x=1759911857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jo9b/6mPaEeK5PkbErgGIXrd32k0mUaxbolG0MoaK5s=;
        b=L24b+hYFvtwh6AUKEtSHYHY8dmJdpNh7Fw1vMe1fTMtnDTWL+3n5vwcI9cxXWlCF7O
         0c4SjUxy4Mcxgyp6K2Y1MPkj7DJXcdCLghUNUH1DX6Zl8LtYMm4CK3H5ocJL0CsSf76m
         Ji2JfoWgcZ7utdKjVzJhNoK73tdJGj6J5HY/9Jyp4BLzZejCmoVZT77miMI9l2DvBcob
         6l8LcZnfek63T2ImwyGneYmr1Yin+3t21VRMfiJdgypyY8411VGjUnW2KVGndayZM/qH
         VhujgFdXPv+Bm4l2QN8qm9g9NXi4YTMLTG5GVjDunxQ+I74kOIc62AuNSMAPC+k9JyEZ
         +CzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUspLmp2WHJwLuG7MAkwUCaPsY2RKKKZ3BrZSXyvsyT0CblwFuAcGLFSIg0d4Aypv3X+TXTLiQVu6Ix@vger.kernel.org
X-Gm-Message-State: AOJu0YwSwxH7DcrhVgA8UU+yih6k+8/AmKvwR5dZuWAuvqqG5eMZe1iK
	WnQ3+CsJqEC5oWC8k0peOrJP5mu/fTs18DcqjyjWwWSl5X93pV3cz0XylsMtCB/EufvPalcceoP
	24eIed4F04l0rLcOQKT8HdJ2u9M06eBLfnDGIr+eNNmarXBeLAWOkGM0hwNWsympg
X-Gm-Gg: ASbGncuiCJDQqU5R1lfWRpPGmwT9BF217/hhjpn7Oi1iuVjC3aMHL+4QmwPcJK0yukf
	y5YtssMZGVSDyUoDxH3cYz1nFIbdmmYp3l/Or/vlCKK55zyDSr2SfN1sVBu1LWBs9HghJf0MSjd
	3yC4MALhkiyOyAeVogmizUHw7duGR4HSV0YtA0cLdhv4XDez3MGTJZHn95RzrE6ILIVuQmnEZ7C
	6/XRwTH6+ipVKWEQjepUtf3izEsKhkbtMPzOWCGjrDdXc2eMEqyiBWbA6KbwKUskKlSb/VGm5Zg
	C0H2BmAbXIWIasH7CoXLu1qPtJ107hUtOTU9i+xykQUvfLKO5PvnQCl9VV0Vpplw9hawzjz2+GG
	S7Tf7PsH2/P5K/BfauideEsN9xok=
X-Received: by 2002:a05:622a:1a0c:b0:4ce:8b2e:feaa with SMTP id d75a77b69052e-4e41c5470ebmr20268261cf.6.1759307056696;
        Wed, 01 Oct 2025 01:24:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4EwFukVUgInauIpgABmEZOY8yZJgYyBZcTIW1ccuqqRJmcHUXlbWU9gHnVB6KeRteTgKJ3A==
X-Received: by 2002:a05:622a:1a0c:b0:4ce:8b2e:feaa with SMTP id d75a77b69052e-4e41c5470ebmr20268001cf.6.1759307056025;
        Wed, 01 Oct 2025 01:24:16 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353f772528sm1320320266b.37.2025.10.01.01.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:24:15 -0700 (PDT)
Message-ID: <0d799aa3-20ea-435d-9c56-150fea07aa49@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:24:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] arm64: dts: qcom: qcm6490-shift-otter: Fix sorting
 and indentation
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-1-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-1-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: X3ngqzcZ1gIjAdVhV8AHPk_eSv_z1Tep
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dce532 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=7Ovdx5uLAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=Q9X1YL7jsAXwpJAzmCoA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TQZWkJv5rNK5-PaLMsrg:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: X3ngqzcZ1gIjAdVhV8AHPk_eSv_z1Tep
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX4xiOCXT0z8s4
 O2wqXGRa6Z3SCHyWFEZHnXHMPVivDPHzmGcllUbI6B9v0SdiR+/+XfCcHmUUrFLevd+UTPCj1C9
 jK1nTpfmUOZaoCiwz8wOGx5cTPSgp2BtSbEnIVGhw/0oKbeM/eVtc6KeKLifbF9RfT+HFjLwJ2k
 zYIsFsddwnGYK7sVrDTc8IeTNugewQKlKspGKTM4MfkQjyudyxgRlAkaHKyCDwLesOZpbxoGYA8
 8lqsh3PpS+2FK2TfboX3l74hiYjY6JVgBA5gP8zRyNJR4SKxzCOgLn/pKGAKVGxQa0eS2ebv8rV
 9/GVJc1RY+x2NytmVHd4cxmtQzNtk1sZpgLSrW7Ddx7EsrS8gyjaeUhhAe1CmHOtOjRMaHalScL
 mlyW1y89wOwNHRqV4aQNHtzrBlb0NQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Alexander Martinz <amartinz@shiftphones.com>
> 
> Make sure the nodes are sorted correctly, and the indentation is
> correct.
> 
> Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

