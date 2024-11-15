Return-Path: <devicetree+bounces-122249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244F9CF502
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:38:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 195F0282133
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 19:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 348731E3DF1;
	Fri, 15 Nov 2024 19:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SsE6wfPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BF61E32A4
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731699416; cv=none; b=t7npnx3FJVSKhN7jbvUisoKiCuFYDdnRUNcrpiWqI8mqadsTolfjHwnZqanL00sYIAi36U19SFO1R4Z/jXCjxMxJ5o3fayXal+CfFoidsm54nCHa1I2AtfHJhJ7Jlvgul6CbXA4GWOEB42P4Y8I07Jdrj0W9hCcl08wu0mwf37I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731699416; c=relaxed/simple;
	bh=wWXgRZqIHXWvVEOhthpKXlxcEP2cUH7/y2ER9fU5Lx0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tk0bAPbpLvoi/EKl4BsALjr5AB8y5VkDuh+4IfpKxAsn6a6ZtvUin7jK3/aO0wCFBDXbBY5L+b5VeSn5pklavMCH1Fi6H9bvtcXg3QNZMdLFl5RTj7GemA69gc8O/ciDBd7dIkWEhP8D5L8tYxbg5PhRXf2EKRYB/D8hw7m0O0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SsE6wfPH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AF9E1oj005152
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:36:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+OPmy28iUwKN7BhgqOpCqy+JA49NoFKjF0aRcQ8M3kQ=; b=SsE6wfPHUIxtLM8j
	aQ41lET9XgW3QStdeugw1Y1MeUXVrv1v8n/FLP3TdAFYUg8OOxSddMet/TRSximD
	WcExSjq2zw/uiyXFhEDMS43jWoSW8jSqmEZqRvo/LsiLTzOT5MNHclWnlYaOvfmo
	pfs1cPqGAmPxgO5URjeLzMoDH4oDthNQdnVGl32UEiNPA+2fhQEorpY8Xw3NW/2m
	cGBbQTkjS7tWY9uTaSzbdWzZSwXPzYjiOsOfhkH7o2ynoEaDu68IVN/4Ve+TzUA9
	+D52Di9WcEtaMjRKw1bNCP/iE+tMzStYuGYQyCQbRBR63CpANiVy8GGvx9gdoJFk
	TyK6pQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42x3g0smkt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:36:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7b1441d231bso26263285a.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 11:36:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731699412; x=1732304212;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+OPmy28iUwKN7BhgqOpCqy+JA49NoFKjF0aRcQ8M3kQ=;
        b=GR3YId/pxen1hzvovnWS8EZvLnPmLfJZM3HvdU7uP3EW8mXu46V3nV012RuMnCMlzR
         /+QDz+ko4MBBP/eP5WTVVITfUuLbl8SDpLtFnvWKpQbWQfG07Sq+IAc4HOueb2uPp560
         11fE06+2gK/uD03MGckFewnKgonZ5coQDoJwos/KpQZQk8toDUux5DL3TmpfvUnExa/o
         kmz5YYDkIDDbMwIqt5piIdpytDo5VoH5BLjtwy9Jpwc5PQAjC4Ff5z5wO0uWhBFU2+V2
         IiPQHy56SJNg+Nh+jb5qdRvb0D5PHK+Ey37fcRoaRL3GLnTLIipvphqONDKq0ajDW6NQ
         i0mg==
X-Forwarded-Encrypted: i=1; AJvYcCXXtPQVxgp7JIBhez6MXExvb9ivui2iv8BCDAo1wIadF+heyiWOoPu3p7kb3KnLDIhEJN+5Xz52RMUi@vger.kernel.org
X-Gm-Message-State: AOJu0YzeR0zjGE3SWLINTTaRWdYITfdH3h0gdlKNE5XHdN7/+OJUoda7
	Sdd+Ay3S3Fjev1D0oNLRbGaWLlmFVfcQIjNWkRWKL9Hl4byrIFEe+KvJmyS/+qOO7gYmiDEOdX2
	fV1GgpP+YusG7FNVn10LbP97dhpDOEdws2WX9vicnfh/qDrDmQtgFqxnjc/Tg
X-Received: by 2002:a05:620a:28c6:b0:7b1:4351:c344 with SMTP id af79cd13be357-7b36230e4edmr212838285a.14.1731699412373;
        Fri, 15 Nov 2024 11:36:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFM/X/KfuFgH/TsyPsQuB1Fcq9SJz//qUFpYS6zyJSP1xikBBDhS2tAds7hIwtC97xXlzlcPg==
X-Received: by 2002:a05:620a:28c6:b0:7b1:4351:c344 with SMTP id af79cd13be357-7b36230e4edmr212836385a.14.1731699412037;
        Fri, 15 Nov 2024 11:36:52 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20e086adfsm208399966b.197.2024.11.15.11.36.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 11:36:51 -0800 (PST)
Message-ID: <68c079b0-defe-4cb0-9f6f-ce9e3645e2ba@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 20:36:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Remove unused and undocumented
 properties
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241115193435.3618831-1-robh@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241115193435.3618831-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: OIKyntiEjmxSJtSdsqcaIuDuck46fUun
X-Proofpoint-GUID: OIKyntiEjmxSJtSdsqcaIuDuck46fUun
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 mlxlogscore=999
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150165

On 15.11.2024 8:34 PM, Rob Herring (Arm) wrote:
> Remove properties which are both unused in the kernel and undocumented.
> Most likely they are leftovers from downstream.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---

Funny, the sideinteraction compatible is undocumented and the touchscreen
driver is not upstream

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

