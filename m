Return-Path: <devicetree+bounces-212316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C719AB425CB
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51A271896353
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB0E21D3F6;
	Wed,  3 Sep 2025 15:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MoqhkWoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E38285043
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756914469; cv=none; b=lhKOr7z4dyZU0Xelg8my7y4ddYK1z4wtH8zqa3AqPJujHg0GMBVbLh6P/uI4T9EG3liELuuEL/R86eYAK+Mz51IxAyRj8Ue3DWoSPBsKf6zPuFGaVyIawdmrMPQAwdpa4T4fulEmw3dvp91Php+5vnDNQCckHpMUyx6PwWCzUVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756914469; c=relaxed/simple;
	bh=XInwh7iVomsQx5qogF3hzih+Y3WyM16GQrfW14cftWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HBZiJS/kEk02IC56y8QEy3uAGdzxeqIDGttlaL4fL7zLi1ovUNNkTwXLelPvYrzAlBuuBatg7p1KLEf7UyIGre5FmHqKxfDZpT4pVqsHla1dIsP5isB/l6rp1It+LS3nyzWrfAKlT6zibbQUBsamlHq4ZXAYVygoWkY9h+Y70Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MoqhkWoK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dwpsb007488
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oU9zNSZ+JNQecUFr9QN7ywvBOG1sjWRxRq01g9yamiI=; b=MoqhkWoKRseuQIXB
	zhRJ6euWY97pDSUuhd3mKCZpuIgDFvV/gqKtF8qamruclyNzXc6uR+s/w1GXm5wl
	mOHlceyHakYFsQU2zLvvRoZF1urhyT0xldpqnRx/iZnPzn4thFCjDJ80HDATBZ80
	+Bkg9dZmYVh8WKf7PenuHvVjizd43iSjFLxK9Cqp/M3+EsOMA6jz1w2DLotpCoS5
	uCqGKy1LarQoximJsUB9CeBPnzw2viL3VacWZA0IUK7veCA2hDogndrU+gagpO+c
	3BTzR43Th+S5McMANst+BNgapNJBsojjIsnK2OpJazJ+vxAxm/PUsgKqYWuHZ1Iy
	AJd+lA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv4ck4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:47:46 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24b2336e513so1135265ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756914465; x=1757519265;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oU9zNSZ+JNQecUFr9QN7ywvBOG1sjWRxRq01g9yamiI=;
        b=oAIcQ+WRwC4z4QHZtMZdXsUVHhGYFqeg8EWWFvrguA02CGXDQyRqNxRmxMVdU4yZ4Q
         FrHhcgT49yEEyIq/o5Ifors2A6RLrxCXJ5T4NI+R/7GebhrurtTlx1WIoSdlRX0EMOEz
         /LLd/L4Y3zN+Qcum3mDOwGqmmCBuKFcZ7G7kXcieMm8wMLbQb2OyCebLUziRQaJUJqXw
         YGQvAyEJilWUJfRuJ3HbjrFlh4Jxhr5nVOOS1xtBj/xh014L9qCNs9zDFoKZb7zY7ysf
         YRyYHXv+97fnl4HfueYdcCEqqcOjiWRCRa9O4ub1e8PY6/7lwko5IwIzujGPv5renZ8F
         MX9w==
X-Forwarded-Encrypted: i=1; AJvYcCUCVnrGYGd8h83iU1N8tKIFKLATVqF0RfQnu0xnoK83aWaQ5czjjmTd2FFCEJm126WfSHLdtQbPZ9ua@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/C2TQJTgXNcikhWJSUDTMjd0xtyxx6bmc3XfhLT61lFcMnu3I
	CpFYDlSKnrnJNkTSQ20/MWUi3BnsKhGcnywGFDMB/uKenHrc+El1y10SprDPWlUtm7xZK7pY0ag
	QNY/ro4Jd1IARMQZ8Thk+jPZnnAqb71ns5HmuuWMLGxYziSkPm9DCFUq9+9wjnw04
X-Gm-Gg: ASbGncvrR71ghXRfjcZ7AYqwzAp1v/mrHZBvBhVWFRvRM7Xh5gCWIhjsXcbsqsLdyTG
	ExFG3BVzkmqpihWzqX67M6mbp9k9gEG9yakUFTUXdyirZbnKt4QD/e5FB6rM/armKnsClchg2zC
	HKNWmJa5Ay5RhqNHWFV4LeDv7Wt0kUjBxwptq56oAcqoyfsQbEDgjpHYrqjIEQjR9Z+ameWi5UK
	zP0CzUn0hjLoCvLjrbMRrQlVUmxqcpfkkPtyEcW2H0zioYqBjH4yvSPo+WLfkA+y8EG5jQTkeRS
	6l5dGi7IrnaYoW4EtXxYk+u4C7GE63eLjo0fwu1as6fhd64okO7msqyWjv70ryep+jv/
X-Received: by 2002:a17:902:c950:b0:24b:1585:6363 with SMTP id d9443c01a7336-24b158565c2mr73678255ad.8.1756914465253;
        Wed, 03 Sep 2025 08:47:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4YwLQKquajxMk71cIseTHOUFmzvVFh27auBfgVNaa4odZqX0nZOQA82oA2Q+AJfG8X0fGzA==
X-Received: by 2002:a17:902:c950:b0:24b:1585:6363 with SMTP id d9443c01a7336-24b158565c2mr73677845ad.8.1756914464769;
        Wed, 03 Sep 2025 08:47:44 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903705b91sm166483095ad.12.2025.09.03.08.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:47:44 -0700 (PDT)
Date: Wed, 3 Sep 2025 21:17:38 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
Subject: Re: [PATCH v2 04/13] arm64: dts: qcom: lemans-evk: Add nvmem-layout
 for EEPROM
Message-ID: <aLhjGuaAybp2CeIg@hu-wasimn-hyd.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
 <20250903-lemans-evk-bu-v2-4-bfa381bf8ba2@oss.qualcomm.com>
 <39c258b4-cd1f-4fc7-a871-7d2298389bf8@oss.qualcomm.com>
 <aLhMkp+QRIKlgYMx@hu-wasimn-hyd.qualcomm.com>
 <aLhZ8VpI4/fzo9h8@hu-wasimn-hyd.qualcomm.com>
 <c7b87a26-2529-4306-86b3-0b62805f0a2a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7b87a26-2529-4306-86b3-0b62805f0a2a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX2aPcHmiHa2QM
 FJuCAvqA+xS0+YkbY4nRy0B0n87ujRYc+jKK/3Cv7EFWuvt26g/KgCP62AzC3YKFtvh+U18QQB2
 7OBUfBV7ClD7FDiXO1La82Ya05AUSaAtXj7ZvRm2M/IyaTjhykh+CyNKJyMi21p9VvbRzfwO6FE
 1sP0tZYGplDjODHACCTVswyqsR/MxzKH81mzwkMuTA6c1v+sbFfqU6TFcvaXgWojcoiHstWdqd3
 U1Sqb9GzUGdkjn1a5UOEbxJX3bM9anYkHP18mELxSaF12ru3XSLzC/aPwyRPQK7cLlodjd6xGXQ
 jGmqONRHZyQgMWGzhAFmwHmftos5FeV5Uko1rXLzcCWKzfiC1/TWyxCqAnO7sYe/Yu1rTDupnQ4
 io7ishFN
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b86322 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=QqZMUp9YY9ei_m5RKlQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: AjqJaW9wihkb9fHDFGdbBTrpASXyjUCY
X-Proofpoint-GUID: AjqJaW9wihkb9fHDFGdbBTrpASXyjUCY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On Wed, Sep 03, 2025 at 05:12:44PM +0200, Konrad Dybcio wrote:
> On 9/3/25 5:08 PM, Wasim Nazir wrote:
> > On Wed, Sep 03, 2025 at 07:41:30PM +0530, Wasim Nazir wrote:
> >> On Wed, Sep 03, 2025 at 02:29:11PM +0200, Konrad Dybcio wrote:
> >>> On 9/3/25 1:47 PM, Wasim Nazir wrote:
> >>>> From: Monish Chunara <quic_mchunara@quicinc.com>
> >>>>
> >>>> Define the nvmem layout on the EEPROM connected via I2C to enable
> >>>> structured storage and access to board-specific configuration data,
> >>>> such as MAC addresses for Ethernet.
> >>>
> >>> The commit subject should emphasize the introduction of the EEPROM
> >>> itself, with the layout being a minor detail, yet the description of
> >>> its use which you provided is important and welcome
> >>>
> >>
> >> Thanks, Konrad, for pointing this out. I’ll update it in the next
> >> series.
> > 
> > Moreover, I notice that compatible definition is missing for this
> > EEPROM. I will add it in next series.
> 
> I think the pattern match in at24.yaml should catch it
> 

The EEPROM used on this platform is from Giantec, which requires a
dedicated compatible string.
While the generic "atmel,24c256" compatible is already supported in
at24.yaml.

-- 
Regards,
Wasim

