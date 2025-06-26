Return-Path: <devicetree+bounces-189983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BE5AEA072
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:25:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AC1B11889D8D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE672E6112;
	Thu, 26 Jun 2025 14:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J+uWMRyj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A28E1AAA1B
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947929; cv=none; b=YnIInGRb7D+npD4Ojp+Fw1Pb9B5QzMZ4b/MRQstxhZxI1ub9Aqlan9nstmLFHKDSYpN7BVQuZLtcgC/kHg81X2W2iVxWquFhXkhna1/CCP275TbCer+lXnRsSy7T2zB9H9Ms4375DcmA3rjUFhFMC3uqlZ1sNyKcBuGyooHjlXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947929; c=relaxed/simple;
	bh=UaAjEJBTuFQqZOwclYKXHCLOJefKqZur7hye3tXnyW0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qTJ3DEMayfRUvDAs4knOJLB2/wijkskS5gEC26h3p4vSODx7JhWLLkXflyDJkj/w0lLoSmf+7sTSqz6oAGR2rguiC+CFAQ7cr+DeCsLNCqRq3mX+vkgi4q2ESO5YweDc6kP2Zm2HP+okB/ObDJl6BQoc7Dym540MzRerZk25JKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J+uWMRyj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9L1WA020637
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:25:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9NBKieE2jXv5JohaadTIjJU9
	wkNY5qr2lfsmoE12q7s=; b=J+uWMRyjsA7wHWdAlfudB9l69MqS0eF4jc0mq/ud
	0kZOxn8JJVOzMYcGn/e2OoFmj0XSJ+t9z//UAG8dnNeo/KZKLIn1KrIMatLfohvZ
	wGl4oTyIIvEtpOiyFUx6EFxJKlN5G53LC7AdJalwYkwPXeDb45t/twfAEQHEoEv3
	K1ao8oaE2+IaU9USMe8f3HFgbZYaOTTYToI0AYRi9wl4XEU9SaNVkLusOzYd/ud+
	Pep4MYbUNr2ZILQiCKgBsSmBKsTRQshiZ6yzXKfyT3PgsNQUfi4DRahQHPjVhXO/
	Zlx9HLT55mpvG3D6s3yhn0e+DUzFAiR9RnCAEF7ZUS/lqQ==
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g7tddj7p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:25:22 +0000 (GMT)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-3df2d0b7c7eso11058975ab.2
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:25:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947921; x=1751552721;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NBKieE2jXv5JohaadTIjJU9wkNY5qr2lfsmoE12q7s=;
        b=jJmk0xADwYxcVQjifWrisFO6gIXQwRbJ0Po5dC4u2ImkSXC8mCL3vUplM4JeigEZhP
         kydGPps+97IHSH+ICH8eqVLprv03T6Yrso7zNmlOIc1cV2QxvBeaDcBOZqyDQNVWHsr1
         FruvGtuT9+NR9Zsyv3qOgiQy5FtLOI3JmW8USdzjIsTMCVcx9JyWGztNDM1MTakyWxSW
         kvQ7WVAXyL2MsdWljwA+v+fn/JSPC9QxediEb/NlGgVnb42skTv+AvVAjXKdj9/JxJKQ
         zY9Q3MXsFK5CD+VKUZiCW4N1JbCmKwI/xV/LEKSZ5eg3heAOZnl/I0Q+5N9ASkcxj2o4
         HJrg==
X-Forwarded-Encrypted: i=1; AJvYcCUaIZbF0KVlzQ1mRtEJbtAG5iRC3BmhSH503eDuUxb9cBqQNsEIrRyA8BnW+S1iE7jPOExZV8BWm7Zf@vger.kernel.org
X-Gm-Message-State: AOJu0YwxmSMocOJq5Uqwbrl8poRNoKUNEct8GP6NTjGNEF1N7/5kijBs
	DPAw6V+2k6ZWkvbRgpDpNniiN4zPPKz/qlji9Mt2Pxw0VO9SQ9rcWTGSS+KhEvFORQh25OgG3i9
	GOK9LG39cfJO0RTF5GFCJfVskdZx/t+maO0PyI/Q+Rfo6+luNnxBaEkkYSk47V21H
X-Gm-Gg: ASbGncvDvSjvfAbzoyHoPdzk7YzTVxY9A29E7e7L/tGr8fwhDbtjptTLkzgpLGU8rOC
	JRYzkW/rCKqqk2XVVqtS7qHWXz9AU+xATPtM7gVUV6lRw3DJf726JVdqJMPZhyFgS/JG0H88Uov
	fcMZEcZc9mcrvq+M9Eac9B2SRpLKK0SRmPbFKm5MLMgdmeQtilCWDldyS41u+gi10XHi1aSEVdC
	Xte+tmiBNGxxkGKu4Z+QEiKvqLjPqlDfKR9N7iLMlEZX4QZQRaezFqhc3zZXoEaPeVirc1m35l8
	lsIPDrBiuN3hKEHYb03HaChMZsUIfUIOPPyrIWxgu1Fxpn6TQm3qBarEag==
X-Received: by 2002:a05:6e02:1a08:b0:3dd:b6b4:11ef with SMTP id e9e14a558f8ab-3df329963ddmr85594995ab.10.1750947921295;
        Thu, 26 Jun 2025 07:25:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZwru9H4uMdVnuVCyUrwh8fkSlplx9chY9TYexo5hJ7asNWlDuOKdQ+3PCVawhe4C+yxM1EA==
X-Received: by 2002:a05:6e02:1a08:b0:3dd:b6b4:11ef with SMTP id e9e14a558f8ab-3df329963ddmr85594565ab.10.1750947920954;
        Thu, 26 Jun 2025 07:25:20 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a407b63sm21209855e9.34.2025.06.26.07.25.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 07:25:19 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 26 Jun 2025 16:25:18 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: qcm2290: Add venus video node
Message-ID: <aF1YTmxF0pAVDFYe@trex>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-6-jorge.ramirez@oss.qualcomm.com>
 <08e3c707-3b39-4b67-ae9d-f9fe65ad210e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <08e3c707-3b39-4b67-ae9d-f9fe65ad210e@kernel.org>
X-Authority-Analysis: v=2.4 cv=CPYqXQrD c=1 sm=1 tr=0 ts=685d5852 cx=c_pps
 a=vy3nvQW9C2dqy/lMnN3IYg==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=eotat5ZnXjsHnA-9JakA:9
 a=CjuIK1q_8ugA:10 a=mHQ74H5e8mo-RpSg_uaF:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDEyMiBTYWx0ZWRfX7CpSJDSnI/9b
 u+qh32u4n3cijUCWLALGdJ/X3Yb1mtKDg48Z/g0VmjYDGouMRlrMNVRlhpHUHM2wzQ1/8Ov0Zbh
 V/98cwVEjhTubzqGO0Bkbdb/7Wq9Vk8Gtd8P58EJpkYdDWJVzvig0Nv/IniDdjdI5DaSUFoQEVo
 qlhFjkfjdMgMANhUdWcE++EGw63snC8IrXq2VtP6oboygvizi1qEvIeD3lbWtkGPB1nPOkK6Qs9
 2sVgx9KCeezsFiEiP6Uz6evMAZpTnmcdce55TaSp0zll2E2waVG6hfIh8ilySZHWlVd9fBnzAbz
 5Z5Wv+uk4fc4qkPERhRUqG0QZOosoL0TYexxu7CK9CSyK9beYIS6f7tUNvKPziIVFLE3Jr/vm1h
 YvZePuA0wa+opuEQ1TOEyrm70A6LxSRawvB1lYdKwYD8A+yBmnM2sCcHboWqVeQ1QMwQZfgd
X-Proofpoint-GUID: 6ACBnNzQrbAXA2E-pOaxUuNnQL633bTB
X-Proofpoint-ORIG-GUID: 6ACBnNzQrbAXA2E-pOaxUuNnQL633bTB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 mlxlogscore=727 lowpriorityscore=0 malwarescore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 adultscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506260122

On 26/06/25 16:05:00, Krzysztof Kozlowski wrote:
> On 26/06/2025 15:59, Jorge Ramirez-Ortiz wrote:
> > +
> > +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
> > +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> > +					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
> > +					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
> > +			interconnect-names = "video-mem",
> > +					     "cpu-cfg";
> > +
> > +			status = "okay";
> 
> Drop, unless you override existing node, but then this should follow
> standard override-label/phandle syntax.
>

yep



