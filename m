Return-Path: <devicetree+bounces-218406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B32D0B7FA45
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:58:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AB94B625AC
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:48:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939B832E734;
	Wed, 17 Sep 2025 13:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XH8q3UQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BB223507E
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116565; cv=none; b=EZbAjjBFHwukPXgWXXOO7u+Jbra50y1tRRDxM7N2e8VLIP7snX8qKJwcoyD2/ke+iwHB5lD5Q10JUL2nG3LZW8RK1MNOQrGUEcZiTug0s3mYq8uXTz/4rPiRH32QW48C1J6WRjAEWs3oervZVUH1zCUPxDgSO+sSgO8V5eBdxqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116565; c=relaxed/simple;
	bh=P+9qcWp7nB0G0Mpnq9jRPgAMimjFqsKqmE3zBJHHxVs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jJWi3CvgfjHZJSIrd6X9Qr3qgL0MGJjP9ljzsscYbSdrFoUDlHe3LNxrpzw5EtgCD0+TvmA5YD+8SysPJ1LZUdU2xwh6R7+yxgJoT2/nXuzBfFjtqqGx26triGJkb75pamYYcxLxQ9CUHGktqNn7tINHbZ9rw8hDc5nE8EJgYRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XH8q3UQG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XYP3018228
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Cx+H6Um1G2JkJ5lXuXrB3HDUnwL0tqqkEuYb++6Iqc=; b=XH8q3UQGN4npAmut
	Iry8oafb4OgpvTI/IgVcqFheSyrG1AIuEg7/bO3mRz8Lo2sqz/gYNodPwtSG7VHO
	eboGISUmrC6mWfGj5IHR/LCpvh8g/iI03vxlt94ee1xdTh9SSYXV+IgBeRAUicDw
	Telxd2JP3heNxSf35v3Lo5w0sOICXpE6q7PgvF7/z/A+C4ld5RrKovlFvOxhaJ5E
	60z/ojoG5HhlkLncfjaGws6My47vKeUsdj/Fga8zKjLojMSWCYxcYhBiRnMt/pNK
	nNrjbD1NU0yeLstflcr94xeLLpjF9JbLcA79XRTVVrIPFwLM+j3o4O2CJJcWXxN/
	+Zw/Gg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwah8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:42:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b79d4154c9so14433291cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116561; x=1758721361;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Cx+H6Um1G2JkJ5lXuXrB3HDUnwL0tqqkEuYb++6Iqc=;
        b=aiaBJkUr8DoFyYjgibhURP9YEEEf+UlHUr8uT74wVCJw4SUNZ2GL9ij/iR+5OrO4Z9
         rrZjLzUEmfLMHJaub3yLdZYP7l3sFNDcR56UVuITHW1IfBGBUQU+VjFUw7YuWwtJ0gu3
         JMmAzoRs9zie2sgcCF3aIJNZfoGqOxS1eO35pkxI74e2T/QGudww/YD3KbWF7gMGFxZx
         XXy1mMgkHdEg8fCNiYpboVpBH+H3/AKpcdldVaH0NOo7c8HCgPDTa0NpeOX7+eVwqXBp
         eS74se8WocxBsKzOcZU7EziQ3oUCCl2UrukD6OeLj37PBGoFwgU0bbs88KHFxne71AuA
         BCzw==
X-Forwarded-Encrypted: i=1; AJvYcCWfS9YnFrCvNVNqajQqcUoyospxhRiZDnr0GgOU+PM0zvj64iO9tEd4oH52l/Xw9WmURrVm+KpNq0St@vger.kernel.org
X-Gm-Message-State: AOJu0YzdXgBuQRtr4jP37Az03vyycQ7QxFwyei9tCct0bBFXjpXXdUlj
	kgIM1xPXefQosUF4v6NAbeWRqaTQOX+Fozl6vtRsPvGgQ1oST0G7Z2Riprwvcx/fH79J7pI1n4f
	uNcOdYHB+MFDfjOsBJiVYf+5NUbk7UC6NmK3LFDYEYVTpTDIegvispgm/1esnxU2K
X-Gm-Gg: ASbGncuSlNcyuqe95HdefluX38gkwc2RGFKYicXH/z6/42U7a4OV6vR5gf/SRCvduy1
	n0gRXX0D67wP+t1sQ6fRdvDgyb8Tx+f2AJQFIZPuL6WRFELobO2mtO9Cj/SvgZEOSTNTWV+akyq
	2IYaD25MGOecqosUMkgo0hB2IrpjMm5P3YriANIensMcf3Avjz8/DAZ3Yx0mjQTl2MeW1ylKjGr
	r4DfS22YNpiXcucAM3QsTn8iRpJFcNfzqf3Bsaa/zmby/tuHlTYzsKgdYImVNBy8oJcQ7tR3sk5
	1fRIWF8yZ4t/l4ydHHHtFKojLaT+TCqkzsou9/06NayEqBF8xzuLvAoNoMX4l3WL3UH1VBRaWIC
	aMr3xwbxtPMhre5lZdX/yTQ==
X-Received: by 2002:ac8:7dcf:0:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4ba67f67aa6mr13897831cf.6.1758116561185;
        Wed, 17 Sep 2025 06:42:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6it76BiV965uXbpKVk7JtT8JZF7WpBlguxShW0UZUk8ZurX542X6H7QXGdtmz2SFxYB8vLg==
X-Received: by 2002:ac8:7dcf:0:b0:4b3:d90:7b6f with SMTP id d75a77b69052e-4ba67f67aa6mr13897431cf.6.1758116560435;
        Wed, 17 Sep 2025 06:42:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd408sm1364974666b.59.2025.09.17.06.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:42:39 -0700 (PDT)
Message-ID: <7380300d-9642-43fc-96c7-a2a42bef5bf4@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:42:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/13] arm64: dts: qcom: sdm845-lg-common: Add leds
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-4-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-4-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cabad3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=sfOm8-O8AAAA:8 a=Aa-MDpYJ7-4v3bfwBlMA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX675Ap2bp4F6e
 aIR1/eX7t5bUZSWiYiBYBz3hw1Pgq9IvDgs5rfMzv6z/v2DKjpClRqdt5VudX6UfG1MsVFEGo9k
 w7IBUd7/44CSKjYSUKR67lwSyLLGJ3pEJbQUixZB53ZwZVov2R6MSOCYm5tFQts5zhrq14pq8ze
 fTff5uiLeQOj7UtUUllxkwuv6RBh2YSFAIHOmQ6M8rKGgRmvWXUG68K8iL7tZHqeOOgIBdZUFuj
 QjTrHzzDvB5LRa2OUC67XB76STAn31zFgteoPACoNE6C1/vPWvkzthxQHInWUuWHDpQb3P5wayM
 aR401j7mfrGHI/wv+IIXtNJ1eLIzAjNTs1JlTOkGQSIQphFW0Rsm8789pzzLrnCM8w4hj5reiAp
 oKsMiYmP
X-Proofpoint-GUID: RaV81aJsn4cgblHfEAkig9LPB7d2kNox
X-Proofpoint-ORIG-GUID: RaV81aJsn4cgblHfEAkig9LPB7d2kNox
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> From: Amir Dahan <system64fumo@protonmail.com>
> 
> Add the multicolor status led in the phone's notch
> 
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>

Sending someone else's changes is fine, but Linux submission guidelines
require that you add your own sign-off at the end of the existing tag
chain (i.e. git commit --amend -s) to certify under your name that you
believe a patch doesn't e.g. break any licensing

Konrad

