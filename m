Return-Path: <devicetree+bounces-224633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B800BC66C1
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 21:09:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 308E619E4C8D
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 19:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A276A2C0F91;
	Wed,  8 Oct 2025 19:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PSdS5V7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D220E34BA38
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 19:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759950518; cv=none; b=fLFBEfCttkANnQDXkZuo4o9Qx8tbJ27QF0FtQXaLf05hlEECXwLGy7OKw2hlnbUOi9f8PH6nBngrziqeaaHpvFwISPycgxHB4IbAqzWoYS7FkT0GRR0YuwcTd4vUlTsK96WaYjD0+RT1rxpBFYoCtwsGBIP8W1VzmecmsMTlc1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759950518; c=relaxed/simple;
	bh=36H8OByZz4/Y/E0gK6HuNWj3lJs38jOo6haF23jGHnI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B8GqPMGbJNrqpX1pu4Vo4200TB73s9EI8Pw40H2/TmvDsTfT+28lSKj//GOPMTAJyVjYYYrjUkoX7HSUr23b3gytE3BcB+rS95yx1cdtCRBeGP1aodUFUaqAB26FXLS7r4Nvjg2fNeCiPvjAOo5q7rz6m1ykhMclgGA9cT6Nqr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PSdS5V7S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5I1D027645
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 19:08:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rw+KzFLht2yFEyIY3QTrtR4U
	azMsrTevmU+uxmGDP9w=; b=PSdS5V7S4B5LBHn/bBi7uCxcLnpqO98yWb2aZxkL
	lHs5i9bU4aIKC039KmHUdulwm0yCEhO4dWty9V8u9aY5N4T/vnWejxXYq64f/OZ7
	S63MguaLUpJpbI968PxkYiryqfI1Z8c6uhPzDa2WjBu9GrRcv0HB9ABQ5qlvLTAN
	la5vrp2lBgE1afSvxkRgwqZXXfwxNDosmbqLLrDPJAzNStM+qH3o4D+S/3f2DZdD
	oQjt3tOvTfi0Yxzq3l9gWBAOkmsA1gINUmpL9RpSm/0e/AJZ+GKQFaMotmfLl8NJ
	/JIn/yFtiD8sY+9NwjFQ6JPr1mQaZuQnKyaCF07D5mLYSQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nrb4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 19:08:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e576157d54so5435901cf.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 12:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759950515; x=1760555315;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rw+KzFLht2yFEyIY3QTrtR4UazMsrTevmU+uxmGDP9w=;
        b=Dh7OBBsESAiX4H1py0EhQ8nzz/6n/zPcBGJT6lBbpYhV5Tsj6OhPHkDz9RQrIOOMZb
         6a+DdWwiZ5JHQNTAycJT+2XfF5I+CZUtvSmTUVAByOZvczsDhQoheFNvDdff25hRs2BS
         8fs9H0G9oSxMznrtKVyiK4sUJN7e56YKxT2063/2RGRqM36IA6tQiTAP8j8MWQyqIuMK
         rP7PKXOxTIIlgQGFwd92slSoZU4SnT9sA3nuGgtBNfLTNctQ1LbavL177WSkm46RPgzq
         /cHgR0FgVGLaQNtHlV4xDpSbMPYmp+6gp4EGcPfwmxwIP2iOqkhcdNeOH2zSXonqKQC9
         5uWw==
X-Forwarded-Encrypted: i=1; AJvYcCWr+mTUTaONiaO+ecABecDFr1x+u1r3HeQYIcw7BgbiREi9uZfS/OdOxGx/8fyddXe7z588z55NwNv1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5D3B3FC/ubIC7vSBVWhtM7Zc5Q5lO2SBokrV/l8NmPYA3IS4r
	EM+ueUIoQRpsAqISirQg20PVnhYWi3fI+c6BTWb7RbyNgSYa/vIp22NXiu2xW9GIJe0SyUWpdm6
	QEycitrG7OFYV3/Buc6wCTKliHUO/nkHAvzmpbRQd0nxIRDDORdKzzjLeFMYBwnUC
X-Gm-Gg: ASbGnctJkEVtiT6tmbkxuhfpS7S/Qkcg6TPv2DuMZyjetn3+LBo/j+pOF8Dt9diJen6
	FYF7FeapZlJZaUIrY0tGDlf2GPlaMnQUr0T8Tl93h1yUJt8wrq7GISC3uUWovStwawFXyGI+PLM
	Xjggy8aX/w2NBaE2up7IYYF2KL4TGfc9ZyXvJzeGPJ17KyYXWtwpnRi4VbzU0hW8YHzm2xJUcwp
	aYw71hJf8zuvmah4NDyft+PoxoL6pkUDX9/TYhwxHKA+wyz+7W0ri9XviO/+78CJKmhjTzJBRu2
	xE5oGIlJf+2xn7QRUxcXKntMroNqQQZUm4EvJXbUzYOcnM5xwxcIYe4UKty/iaYWnAdLT5u5frb
	CKLaJLcvRhJFabKwp8buVteal68c0xoEcG+ZAyiK+4e4DtTKyNjPYGun4Hg==
X-Received: by 2002:a05:622a:4206:b0:4dd:e207:fce with SMTP id d75a77b69052e-4e6ead64a22mr57960231cf.70.1759950514863;
        Wed, 08 Oct 2025 12:08:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9dfHI26F6tmDQPEhiuoqrcfAbe3ngcx7SImkYRwO78fn/4c/EYGv3VDRX+xMY9m3o8N3kCw==
X-Received: by 2002:a05:622a:4206:b0:4dd:e207:fce with SMTP id d75a77b69052e-4e6ead64a22mr57959571cf.70.1759950514231;
        Wed, 08 Oct 2025 12:08:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-375f39fdbc4sm22092051fa.17.2025.10.08.12.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 12:08:33 -0700 (PDT)
Date: Wed, 8 Oct 2025 22:08:31 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sm8750: Add PCIe PHY and
 controller node
Message-ID: <qref5ooh6pl2sznf7iifrbric7hsap63ffbytkizdyrzt6mtqz@q5r27ho2sbq3>
References: <20250826-pakala-v3-0-721627bd5bb0@oss.qualcomm.com>
 <20250826-pakala-v3-2-721627bd5bb0@oss.qualcomm.com>
 <aN22lamy86iesAJj@hu-bjorande-lv.qualcomm.com>
 <4d586f0f-c336-4bf6-81cb-c7c7b07fb3c5@oss.qualcomm.com>
 <73e72e48-bc8e-4f92-b486-43a5f1f4afb0@oss.qualcomm.com>
 <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f2e0631-6c59-4298-b36e-060708970ced@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: mW4wYZC1elSfqA6A9SbGFeyKZy5rHwaP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX5TtvMuF1H+Ks
 WLXu6cdl6jIlnfT6TIqKMiw6tfePrpInYs7MrePZSrAzyl/QqAdpu56hSdDq7GDYgw7erLfLeHF
 rv5tkuMkQo75p247Co3G/4oxP6hr0zT5EsFSneWyCk1ilu61mQhZC4eACIra/mUrnsKNakilWIL
 veCaiMwK1AyyNYSoA9rm1/+DOEtlQszAtpse+ZR8osAFa/Galc39B2fqIKvfa3gRSbPMVAGt+5c
 8/pX7TeoXpzt7CtFN5cB7S5Q8KX5t+mwRGYACP3DLxTwD3l9blnDQDFmBzGSYzxnCUiy/xjQywr
 d51dAFkCBn8GZ+kB28lP3wwXzGTBbkqLoOb/zjD//swIiDEoTHxNjiGlCJR7u3b7LRW3L9UfEuF
 FZkc631xJdtGKleFzj5faT1cj+K6Hw==
X-Proofpoint-GUID: mW4wYZC1elSfqA6A9SbGFeyKZy5rHwaP
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e6b6b3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8Rp3m3j2afKyq596a-UA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 11:11:43AM +0200, Konrad Dybcio wrote:
> On 10/8/25 10:00 AM, Konrad Dybcio wrote:
> > On 10/8/25 6:41 AM, Krishna Chaitanya Chundru wrote:
> >>
> >>
> >> On 10/2/2025 5:07 AM, Bjorn Andersson wrote:
> >>> On Tue, Aug 26, 2025 at 04:32:54PM +0530, Krishna Chaitanya Chundru wrote:
> >>>> Add PCIe controller and PHY nodes which supports data rates of 8GT/s
> >>>> and x2 lane.
> >>>>
> >>>
> >>> I tried to boot the upstream kernel (next-20250925 defconfig) on my
> >>> Pakala MTP with latest LA1.0 META and unless I disable &pcie0 the device
> >>> is crashing during boot as PCIe is being probed.
> >>>
> >>> Is this a known problem? Is there any workaround/changes in flight that
> >>> I'm missing?
> >>>
> >> Hi Bjorn,
> >>
> >> we need this fix for the PCIe to work properly. Please try it once.
> >> https://lore.kernel.org/all/20251008-sm8750-v1-1-daeadfcae980@oss.qualcomm.com/
> > 
> > This surely shouldn't cause/fix any issues, no?
> 
> Apparently this is a real fix, because sm8750.dtsi defines the PCIe
> PHY under a port node, while the MTP DT assigns perst-gpios to the RC
> node, which the legacy binding ("everything under the RC node") parsing
> code can't cope with (please mention that in the commit message, Krishna)
> 
> And I couldn't come up with a way to describe "either both are required
> if any is present under the RC node or none are allowed" in yaml

What about:

oneOf:
  - required:
     - foo
     - bar
  - properties:
     foo: false
     bar: false

-- 
With best wishes
Dmitry

