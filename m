Return-Path: <devicetree+bounces-153515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46470A4CDBC
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 22:56:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF7CB3A7393
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 21:56:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635051F0E55;
	Mon,  3 Mar 2025 21:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gGJjuC1r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E424B1F03EA
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 21:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741039001; cv=none; b=cK2zeanJZBwiojcEf2Wk9D1nqKtN80m0hPIk81EbR028jUMsMR7BZ05WRUpaIkPx6dyuTSXYXiiDZWKrDRrG4J2ca01COCckUobng73GBsGx+Sdmhi7BzVXqz5Iocqrhnp2Anak1+d7nJ6vNsp3tmfOLOYJMzxXP3NeERPL19+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741039001; c=relaxed/simple;
	bh=hQRHnDkkYYJm1kGP411WuGPS6pRSmfEvNG8A2sv/jFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rnMrcdp4AgFiAQIfju3plnc0J7m0Xc4r/42rbnuMjigyXOc2POzAUU6obbz4FlL5TvSSTFyufPfGOC2bpz1erbB1TQJVZvUg3+I3H+zKhpWaebGlFmk80dniM4/F9HRMP2tiLfUUgO3rVILe3lyUuK8yKZL6vzv7Fvo25K9vRak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gGJjuC1r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 523B74KQ002882
	for <devicetree@vger.kernel.org>; Mon, 3 Mar 2025 21:56:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kdn0EPWjFWi47gSGgVfPoqhV4FTHW45fU21tUvu6lFM=; b=gGJjuC1rR3uk/jKs
	PyqX6LaRjzfVdTM8o2IIHA8+VSQvpd8NxuRZ8q+SvGrQ7pZEkc9wx0OPfJizgP9U
	hIprJcrb6w8Nj2Ys3RqKH6hoNmJ+CWOwsyik6zgpcLSvttHnpysQzm41xkZJIGES
	ewnI2VPLLs5OZrLoXgbKMju6I77fnWApKh2ZdLhy5mLcOC+svC79AA2uICJ4oZuK
	E0879FZOme7PtrDO94DZBgi+KEQpGpfyaMBjA4VLqqQ7kQfbsBHE8Xh7uGOUzzl/
	OLpATw3+Zv+2GmFbFfuGd0F+O/SAB+NN+NsSfVcdWQ+mnKbKk5fgLiy0kApUk4is
	OJQxzw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453tf0p1hr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 21:56:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-474eb69d822so3753121cf.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 13:56:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741038997; x=1741643797;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kdn0EPWjFWi47gSGgVfPoqhV4FTHW45fU21tUvu6lFM=;
        b=CmzdXtbndViV74N5fimOm7SCpbWVBdQOSDHc5Y1VLyx5VcKWqWhLQRLPed9zWai0Dq
         H59M6DBd0G3MZODSjL4R33Eyyl0kcsX/rxAKWIpEh3W1mn1bQaW4LEWkVOw6osGAhKCz
         lCcsCyWTqQHJu/LcS/5D5IbKj3e38tovHmZ5adlnDWmfi4dZr0XfPGPha8eTFBdkxMhf
         PrZChOOJupo7ZUrWYNCavalL3cXWznG+HqCa2TlMnP1XiKF1IinK2YFuq5FEvSXZYJOb
         rfrzk45bfrjAxSO7D/oWgogVXap42RGBEBii0JAjqwaW5aqgdcbI7LfcWhjZ3d3TQ8CC
         IdAQ==
X-Forwarded-Encrypted: i=1; AJvYcCWH1QEANoBItOtO8cVfSgY+TJiKlLdvv+5GGqFepDL9RZuwSbk6vz7yW/NXz6Ltosp8+LeI6l4fkifT@vger.kernel.org
X-Gm-Message-State: AOJu0YzlCl+55kaSPAMx9dks/eTCDEgDOmT+2AqLVwMzasjxcX+7orH7
	D9OXCA1/Of9L93sFpEbcqjsXCJwGOP5vA1u1CiGstGab6Hm/oNk7ixWoanmmgiQsvBESevCE4N4
	Pn5CEEqjD8QvBIh5CLqlmet7LAKUNrm2Lgxqx0nYOhVDx8vZT4WPRBtON6ue6
X-Gm-Gg: ASbGncujLyiPPNb3k7s8aGv/ghiaP+59HmX7J7bNnPZWG3q+cQ0HpH5mvVS4zDfiJQh
	mH7du78Ni1wlsVnOurWMmYc+ADYrTALcf79/5zOFj/lf6QWf7ql7oFQiGIPO5H7HVpQoHTLFZvg
	U7lJDtXnx4Zpks1q4U0vY+CbPaSgbQHimv+CXT+NRRPB3XRVD4Zolh4tbVPL3g4LOuVBAI9lztG
	gHOehtgRGx27HEMMlP8OL28bwsFuwnuGz89b1rf9rzDlakJK5CHKXbzi7+Be+bAsxaSLkzY+CLZ
	vPPIJbT3bJxb8slYkzA2h34HvZdxqxibaZBd01QX7qheBf2xuA8pBvSwD+A0oGYfAOvEVg==
X-Received: by 2002:a05:6214:2aad:b0:6e8:9ed4:140c with SMTP id 6a1803df08f44-6e8a0d6de81mr72805856d6.7.1741038997585;
        Mon, 03 Mar 2025 13:56:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrJuoSvkjwi3RX1KRgiUtMf0XgXWhFFVFKUGmACEcoXKDG2ph4RBblLXA+X1oIIsGokl70Sg==
X-Received: by 2002:a05:6214:2aad:b0:6e8:9ed4:140c with SMTP id 6a1803df08f44-6e8a0d6de81mr72805786d6.7.1741038997268;
        Mon, 03 Mar 2025 13:56:37 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac1d860c279sm172592866b.27.2025.03.03.13.56.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 13:56:36 -0800 (PST)
Message-ID: <33bf565a-82af-46d3-920a-ed664aaef183@oss.qualcomm.com>
Date: Mon, 3 Mar 2025 22:56:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 4/6] clk: qcom: Add NSS clock Controller driver for
 IPQ9574
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>, andersson@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, geert+renesas@glider.be,
        dmitry.baryshkov@linaro.org, arnd@arndb.de, nfraprado@collabora.com,
        quic_tdas@quicinc.com, biju.das.jz@bp.renesas.com, ebiggers@google.com,
        ross.burton@arm.com, elinor.montmasson@savoirfairelinux.com,
        quic_anusha@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        netdev@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_varada@quicinc.com
References: <20250226075449.136544-1-quic_mmanikan@quicinc.com>
 <20250226075449.136544-5-quic_mmanikan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226075449.136544-5-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: V1y2jMX7aEJkhrf2AkPJIIYJmuMBtYRO
X-Proofpoint-ORIG-GUID: V1y2jMX7aEJkhrf2AkPJIIYJmuMBtYRO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-03_11,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=637
 phishscore=0 adultscore=0 spamscore=0 clxscore=1015 mlxscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503030168

On 26.02.2025 8:54 AM, Manikanta Mylavarapu wrote:
> From: Devi Priya <quic_devipriy@quicinc.com>
> 
> Add Networking Sub System Clock Controller (NSSCC) driver for ipq9574 based
> devices.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


