Return-Path: <devicetree+bounces-245250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 65329CADBEF
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 17:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CEC63032AB5
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 16:24:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D54802E7F3F;
	Mon,  8 Dec 2025 16:24:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PaRRCjzt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U26PHY+Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D45D2E62D1
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 16:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765211054; cv=none; b=mbMscGL1HMGUAOYTeYBJqo/3Jt70pBz2yD6Sp1XBq3YmMpNen1IIDSS9MQ3TQIlbOm8ey+c0820QPtWO7Y/KBX2geQzkwdB+JQLIgoxB7feKMtfG+MFWmFy+bhM24x2SL/4gtRfqaro0u0PTKqgNvuiMlVAG93tMIDk4GvDWqqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765211054; c=relaxed/simple;
	bh=33+Peg5HYkGZKq0mvxPaKBI6bc8EUzKOfFGlWR/VMPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IdZ7WQHl8mIaCXVsUVNfKYp4DcgXmUkkbRlOHQcDruVAU+0W2VWdU6YYpgWFAzwiDUh1m5OWWDywrqlcwfEPVsDudriytoRNn6fRhOqmVWbyCN3kzrfurMi4KTk/XvQ7Ka87A6yq8TnirL8mwj10Sj8EcTBPPT+FAs/ZtftGuiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PaRRCjzt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U26PHY+Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B89F8Eb3863015
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 16:24:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T7vR9Q3VG97elLPquMgn5NqLeMYBwAyjYuoWbAtipQ4=; b=PaRRCjztjG9AC94f
	qa8K3Yglh/bmlNpo/k1xRoOQPEAU3VjUVMHxD2FD7I+Fuh7AgW/BT0ynoyjQUccY
	Ri2ldg/Yz+C440NEL5UZZHgg99+Rn4nKoSii7RSTwVcSq5wdlZr+xHHvj5egwczq
	vjIVT6Muap0LnsIoKan2o3gj3reKQTI8v8bcXQ6VO7ymNzdDF8ApoItG89NJi0uD
	V6jOmekGhPr2RL3nM8mYSMwQRrSJ1WCtbCdno2wtdi3ZB/W07sX/XuZMdAbaODCJ
	LavCjY5i9AlPZ6Dk6X9RiPE5JDxRhUBJZBW31dabiKJR0tdzmm9TtKZA8DKZfH0/
	3q2wFQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awuvg1972-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 16:24:11 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8804372387fso13949326d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 08:24:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765211050; x=1765815850; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T7vR9Q3VG97elLPquMgn5NqLeMYBwAyjYuoWbAtipQ4=;
        b=U26PHY+ZniaWoL7cyG7x+kA8Fy4W5aUk5riIRAugb/u3oYL62KW9qxrU4DJOegGmji
         HpM1VXtjAxewP2/EU/en6g1zM/Lzx7rIwZsMNRJcb4f3p1a1onmWgEyRpD4r6+VD2Q9q
         WpNYNt5u72SdHFJcIpCgusyrxMH7PYYrDCRBufxK4AZqlr/52e9mPk0RfR6UoEieRW5k
         miWcsX4PpiVYfy8JbzuYokbBf4vVE9Oos9x+F8R+3GcO3vNsh0OzYOBUfH0YRas5NLsV
         OKmBstCsKUrskNF7teP035OY4Wjwl2MtU9VcJbwyuwBbWU4WWO85dr04fJYJpPIC/WIM
         z22A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765211050; x=1765815850;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T7vR9Q3VG97elLPquMgn5NqLeMYBwAyjYuoWbAtipQ4=;
        b=uN53pHrD7D2gwisCN6JmGWHy1+BoHSDcpFrv+ESNNxA2w+aRfRArnMYFBinQPAPAFl
         Fgn5bDcFg1bIZAKj8ARvBxIUxwmDVgA394fF6p8Gk+e9L6st+Em5lJCLD2Tz+rMeReTA
         j9k4u5k2d2df5LS1bVw94aXRGVu7MhZr8orkYYgwpwzkDR62sJfUDZGO3zj0pn6h6ruF
         xi7d1qgK/YNS6si1YuRuu49soNGx1MvgeZVhUblmsqcR/0GIOtgKaOI75r2mIItOkB0W
         Tc6QDjJ8WtaxtgX9KyyaQOysk1ONI9phu8+zgDY4+1PMZxnFnuIExvp6SDNUJ/OeGL3B
         kKHg==
X-Forwarded-Encrypted: i=1; AJvYcCX11wrDdGjQWyJA39smeGxKys3+aF4Lx8PbyEfxWFVK1UeBN779ROgukMmcARHtNDq2X43BZh9hZZzQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4QKbvI7DaRuWQqq9CW0Jhvy3yRFR/ZZC6A859Z9/qWa9N4Ja+
	so6KmZGn9lyE2Aq0zn4FGDQ9VOcwnTow5i8drfNGg+L1SQL42aYGlIjmimgQEVAgVPIiSFx5yxI
	Ucuj+SBiwBpTkIB1opkjnhpzdrOqXKNCm5UnkKXNA9DHuJoVr4SuRCJPdnGiLxBWo
X-Gm-Gg: ASbGncuLU9aUyb0BTT+SMGsA1n+ioQ8wsddlDBrnLD+NMCKypLVM0NO5J5Qc25uQ7XO
	i46mDb4cHI3hQK4zda5kkWRdSq4vjQB9wF2bgjb/4ATAhq+rHXFTf9k0t5XTIClCe9sNp9DzGip
	GRPSvfDueQv0q9xB8/prqUYGPFdRdGq9koj8wxI0BsDpgLuR/5FD3jrzAxGKiWKF2xUKLQoMSXZ
	q2sT/HRpy+IMDx/QWhhcMyXrN5n3G21lalu1Q/jzXdbtv9qQpsnr17fJi+pZY9rIrGBkZ8/X6Sk
	ND5QUZQ6Xhlbx/LNKFpPNdLQ2+KwJvq9VRyVNjB0iNVt0jTOah9mQ/xTuhRFXRcqFVd4AOHDJVr
	lvUQwNUeDqNQoHpHhUIa2VoSX/TPeM0xqhrpo8JmB/kiOcR6RgF8aYBiO+5CYY2AZPA==
X-Received: by 2002:a05:622a:509:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f03fe01b6amr90347861cf.4.1765211050346;
        Mon, 08 Dec 2025 08:24:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE7oZhoUx9vxYjx6MTxnmBU3LLDz+KUMXYPKZ8dlUqDEUKzmEhB0kjb3tTUAdsYXnVJIXmmGQ==
X-Received: by 2002:a05:622a:509:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4f03fe01b6amr90347431cf.4.1765211049843;
        Mon, 08 Dec 2025 08:24:09 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2ec2d8csm11405525a12.5.2025.12.08.08.24.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 08:24:08 -0800 (PST)
Message-ID: <de915480-4aa3-418f-8b5e-198b15db7592@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 17:24:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator
 support for Type-A ports
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251208085152.2597818-1-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEzOCBTYWx0ZWRfX8aeAhKp/OTmu
 nOFlvACq4AL7VwaXr8c902g6wYkvWTeaUykg2IoR1kidc9qpe5a1es7XEQHwHzr9qOZ6T7mrCl1
 U5myEPwuF3yY0b7qF/BdolgQcdp9Hf0LcVjZYbdCJFfxe3/B04nRPutiaKFEifiHciqAUEuMs60
 u3gewbJYOnd5TYhSeTSf7z0VSQvJeAJYO7aHD9/gk7TJjbRZ30rqsFhPAbWtLAaWqEWBG6GC0yC
 8L4DD2VdBX4RcjYiFClhtc+qjaFF8lbzrbRvWyB/za5SxN5fHtqSunq3LJdtvuT34DAbHS8MG0w
 NWmzk0lJxCY80h/NQbAfVgmgKYb+vTSPw6293TxgBjZMLYNGd3z2X1PSm1JH6KCuRpt8U+9DkGX
 dLlOD95uRyL0aRNP7tcWGzCz0cw3Kg==
X-Proofpoint-ORIG-GUID: gIkfNHnYkG07PQM0p2jaOCeKjT6HhUus
X-Authority-Analysis: v=2.4 cv=cqSWUl4i c=1 sm=1 tr=0 ts=6936fbab cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=VfrTVM5IFoUUBtdl8jsA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: gIkfNHnYkG07PQM0p2jaOCeKjT6HhUus
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080138

On 12/8/25 9:51 AM, Krishna Kurapati wrote:
> The Multiport controller on Hamoa EVK platform is connected to Two Type-A
> ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
> regulator, controlled from PMIC GPIOs.
> 
> Add the necessary regulators and GPIO configuration to power these.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

