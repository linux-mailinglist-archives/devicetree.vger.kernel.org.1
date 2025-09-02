Return-Path: <devicetree+bounces-211654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C78BEB3FEBC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 13:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C3D203AC763
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5DD2FA0CD;
	Tue,  2 Sep 2025 11:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n3pPskEY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5D9283C97
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 11:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756813650; cv=none; b=VrCHBM/U+HeHv/UH0s02iub6TaLeGg03GBTS9Gg2PksrnQ7/BD8cs/uB97UZ/SdM/42oxiAyPDyGADid9mrGtgIqIMZHJB0wf2frVDpETHZDQ+Jt9beNDUjHO2Vb8kQK7JeoYN4MMp4f2oQIKTtNLAxVPvEVaLEzzk/Qvjii3TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756813650; c=relaxed/simple;
	bh=Efg1Sal0KX5O8uYenvTI/MzkTGbrZNd4ohf0F8McEG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OHvzJqI/vVgrI35qmZTXpgKo5HeQ874H5yDNYn2sE5dKGYMdFgFxkFhJ4y+YiXmtsWAzYLePY2kaZalUC6TaneVytjF4OBYrEMKzkVOow7XE9bUfdmVeP6E/WvMQAcqQQv1nVwZ1tHgQJJxEZx0aE4WE53Wcf01TZ+oL2KGnZPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n3pPskEY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AotV0022023
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 11:47:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2vTMTDMliYIWA3QTZWruvIxOrprzqsFuQP3qBWa983E=; b=n3pPskEY+Eh83K48
	/AyIcuimWmqNruTTtWvxMDhNVoW2VQtC9rKYwTLztaLXfKdbZklJBtG1Dk+Mt8bm
	YXEM83F6t/MKboEyU/t+omkD2O3hp1ckF8phDoztzkunBXbqb9ROnyIaBwmZTaRy
	Z6riUIPl3GnJwacNqqXWcfbh8a5SNV/c+DTPNwrhzKFD1M5VyttREfZqgvCBZeu/
	pKgT0GAdFUIoAuMuqapYv1HWrtyzFH+3MXUPPJt7i0BcFKQsieaLweLFM3MB8h5A
	ZVHqMbX0iXUan4RJ8jUvYNhyDCqe/3uGRYTcrtXTyHwdRn8hDnUeOjW8V9f3oAs2
	urVuRA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48upnp7syf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 11:47:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3037bd983so28866391cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 04:47:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756813645; x=1757418445;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2vTMTDMliYIWA3QTZWruvIxOrprzqsFuQP3qBWa983E=;
        b=hGsOPqC17waBcnUc/iEnwAx+K+N8RhOeNKvu+ead4+km2e4+NAdzjJpp/6VjOTmark
         2SGuI1yusSMdplmnGMNbchWHhmVHqmSI/CTOSJbl44MYT75dUf5cSMND2WzfgepEt77g
         Z9kanpUJ5zeOnxEsN41tOk4foVnmW5ERrFPknhstV9z4qPcrefrTvFFWV31MSmQUdXkE
         DukIQsNPMnPMAx6+81nMd+3uGH5kC+9xs5IUTyrLHw7htCQL17PgUMV2yENOb9L4LdOD
         VpUdQOb7QFJ2PXpd94S7BMvERkS84iGy+MMvxwJcFWxheoiWEU3SUeLS2GlDgIfwGlAG
         udXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiBP+BFzxtuM7pjYlwGryJNW1hN+g9QYmCYyIiY8MBhqcmucHQzhqILiO5j9b6pyFWVUEKVjUFd71Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc2bu5mMA7LITMN66eKFNfMyqsKWUazyT3mD1TOYi0XlP8IOTN
	CaEMbJpFFdRq113GH8WgJKHKSAjWwr9/PSte0M9JCOS8J1A+jIqu0MaPmsEdV5v0r8O8mhM9NGN
	Mivma5xD0BcezIL4lq9MNNcDy8nS2z6sClnGwIEyGqF6DLN4LZ5ZtTDBmQINmwabV
X-Gm-Gg: ASbGncvZv4JAXZCIe2wuTdMSWkhZHYazqqAuxMoew5t8ijTI20AenyoIVqVVz+vN6bP
	JuBS4wyHmAd06xICWOg5fULZDuFrvYygRPab+CFD8EJsx31kVMxh+tGOnXfsoMBf+pAT/Cb+49V
	Iipua3XSPoywChiu+rL8QVEqAz2GW3mS/uBjWgGaaHkyWM229TzOgcZdI361kRcX1mjvJhGHLBW
	fVab4fh12lsekZoG8U6l0NHuEjry+QaPIxo+UoWNtm37kkn+DUDwSOwcJxbpLdTP4IP8NcUakYS
	zN6rdsxmKc92n/NWOztI0YZBjYRLs/XeHLp2aEo6Axjvu8I5ma4QB0D6MGh+lnxeoNTC2pz6H2u
	HwXejyJDeo7xQfaqoQilM1g==
X-Received: by 2002:ac8:5804:0:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b313f0e2ebmr130498371cf.9.1756813645473;
        Tue, 02 Sep 2025 04:47:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEa/TiGzm5CdFf5W/mtmjzpcHIClEM9pOfrKxv/RTV2a1ZzxsQKuK48Yvc6XvUx5Q34m34s4w==
X-Received: by 2002:ac8:5804:0:b0:4b2:b591:4602 with SMTP id d75a77b69052e-4b313f0e2ebmr130498241cf.9.1756813645033;
        Tue, 02 Sep 2025 04:47:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b041f00d4c2sm571868366b.97.2025.09.02.04.47.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 04:47:24 -0700 (PDT)
Message-ID: <6f9b7f9d-9ec7-4827-b6d5-51c42b5eb7b9@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:47:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8450: Add opp-level to
 indicate PCIe data rates
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250819-opp_pcie-v3-0-f8bd7e05ce41@oss.qualcomm.com>
 <20250819-opp_pcie-v3-2-f8bd7e05ce41@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250819-opp_pcie-v3-2-f8bd7e05ce41@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: fHyy9HBpPkm_TfOymGEaNJNYlGp5N8Lg
X-Authority-Analysis: v=2.4 cv=Jt/xrN4C c=1 sm=1 tr=0 ts=68b6d94e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6pHcnep46kEejBPVP2gA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: fHyy9HBpPkm_TfOymGEaNJNYlGp5N8Lg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwMSBTYWx0ZWRfX9py+7CpqJTNH
 T6RtRJ9Gh26mG0xsbCqoRbpQ253Fn3SrKCX8yJfnktABRi2KsrGe1l3pvp5ciZSHYcnaHjf0c4q
 q6JmSRFKnAS9CZy3JXgYjFX5JbKL6pQsuqGNlA8Md1ywEudhoC6f2CgjnmtmeNuuGGSRePUUAaE
 cAwU4AvJh6DQHUQnmyI78T6Lz3Cj6m0UGdBQTNycmk9Z1ZOGZ8F8OM5ugz/sLGeT5t1kX1nT6aK
 hX6IkxEQ8eD0vITEpL900KQ4R0rkgcTa8/G7RArcLoONZdmBGTjStt0FqcmPsOHCrxQ7RBXO7ar
 GsRDnL9y3F4l0xKgGFG0i/POeyiTHchTA5s6C+63gQ8aFyYjL5BQPESTghCVhSe8SIQwypJQkV7
 IU9mIgN8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 impostorscore=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300001

On 8/19/25 7:34 AM, Krishna Chaitanya Chundru wrote:
> Add opp-level to indicate PCIe data rates and also define OPP enteries
> for each link width and data rate. Append the opp level to name of the
> opp node to indicate both frequency and level.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Are there any other SoCs affected?

Konrad

