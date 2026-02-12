Return-Path: <devicetree+bounces-265070-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFt6K2/GjWnT6gAAu9opvQ
	(envelope-from <devicetree+bounces-265070-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:24:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 129A312D6D0
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 13:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D3D8304971C
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:19:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E300A3570B6;
	Thu, 12 Feb 2026 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WRYW+YBs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="be5MhbXD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1C372FF150
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770898793; cv=none; b=hrdESpy2HvVS4VWQJuakFWGgyFseuV6ttfHZHtCzVaD8LeD9nK6Z5EJAEMq8b4ybswOZbn1Y9IOtftBYwlNaolc6pnFJccaX4NT1iWMacvW6eOrQ7R4s8KFFQIR+IJi3aEJUJNfhlGQkkqkNNjzrHSxRghNpoGsnfGRC9P3CbW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770898793; c=relaxed/simple;
	bh=i8Ap4gNaIvASiyxPL+SFE3APyLc0S47qcf+WsC4Pams=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D2F3YMiK8Q21NEKJEa1lmiJK5oRQ3TF2Ea/S+PSWbIRbDNIZOsZuuOrzR94M9lUnrhqK9Tw4X9dcAEvuX+e+/ASAc8p8VkHTNraHM0XBLPV3Tvxdw7zgHqXIjVyLvCnmMfH0QOetMdyDy6WyuT7y1PWuc0WsAaHGdb9Z1jSL6p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WRYW+YBs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=be5MhbXD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAGHQQ4112109
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:19:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jw/nZzUumpqk5yDdyOxVMx+emg0ZSP7UYCz1Br0e5C4=; b=WRYW+YBs5cjUXQ0g
	d30Dhc6K/kI/yai9sVLzHArrhdWNLNbooEwTk6xC43gst9Wl1BG1bdLPx1v59L3V
	Rg1e32pJi/16fic6M8Sp0u1bkJMVu7cF+HQgkFmLRwjOJkaoqsS+zpba5jeumOZ4
	UnRwB9PthhnD6BTyg9JAGQdruF/O9ea7uiFjSn6J1TYBty+HiWQcUIp4vR9jhQ63
	mUv4CBSCaqLDY7QZYCzVSXScQ2C4mdvxzQdc13f0bGxOmLV8bNOnGtUFUP9lTT0M
	/CdsUfO07guXqu10nlZNnrfhwCFHWt0OlpjWS+2NT/+/j4CUp1F90fXkNA0ijBN1
	Oz74Gw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cya8c26-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 12:19:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c710279d57so266927185a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 04:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770898791; x=1771503591; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jw/nZzUumpqk5yDdyOxVMx+emg0ZSP7UYCz1Br0e5C4=;
        b=be5MhbXDP9zIVh1lj9FHvjiBsunqSHd/5xsJr1/ZVcNyn1lBUMggf+AljO4eyE7bNO
         aa6HPOpj+HMCJhUyxeCIpcata0IzpKRF7t75xidhZDOcF8iTh/IjAWrcRn3ZYNIV8RKx
         O5Ol6pNLJE3/dQSuTje9/+ZRr5VMubeVkQTGYarjmKWvBMEQgFZMNhIDdx/RmWHOuyqk
         znPOoFTFvhOs1hqBC843DkISg4zFQ8efqeN2qEy1ci1PV4lxa9BB6FJMHrzBGzh3PvKg
         xUbTAqigl9IFrzmiNrnHi/tnbExtHxq81kmEWekrb5zcXcdX2bCrAU8ixPP2cHr7JrYv
         UWLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770898791; x=1771503591;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jw/nZzUumpqk5yDdyOxVMx+emg0ZSP7UYCz1Br0e5C4=;
        b=XftQCrVLpqIDBb6lCeOtMJ+fB5Dpd5l711raXfl6RKF7OZAZ7pcsnC2LkkZPqF5d8y
         sN+j+q4iJOyHIYx20nE8GvxrHRGIDsd+Jr6FsksTJtOXflaFI6RXni/aPu/TSy3OHRX3
         qX0Vhi4Lf4i+WHBvbcdi/CE9Ub+WnV9Qsgw7rIRTtNJXnHoR3PnYJK25UYeWh9XGbUWX
         TA+kpgQLN+JMDW4GEeF3JMsNjb+uO5tC0YoeOn+KL1r0xUGEa2zJ454O9VSrQ8Umvyns
         a+tzK6B9qX/FSzliSGlsPVwsWndrBlbD0tujVS8j2wigG+EJHrH/qgEZNFzx7UKLieJM
         JL/g==
X-Forwarded-Encrypted: i=1; AJvYcCUP8dSa40ZJYeFdeLkbbe+OjqjIpCqhZvCtWdlb50MLRrCTMmOAWGirQXH7/I+Hmcw2v7uoVxE5MZYo@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8pazLpTT13XRviHU21z+IL4INx7aanUD32xZWdyC9+gi4LwwE
	l1EhehoueejbTYJOc3fk+5I+lzgk4C8QCjZl3HU9f6Y+DK5SyOfTA8xXjfVQTyTNpDO5Z16U7qE
	p3jibPFPvZ83gsb7Q98vQXQ1yTBPkQ+emzc1GrgUS+q1bKwex3kXOx8N4h6PAlupp
X-Gm-Gg: AZuq6aK2gcpDG+usHsneG2WpcebwrwgU0i3kbwwghPTJVlUW/aHX8etPD6tWucNpIr9
	K4VhUprbRkCE5m2Ka3nvjSgoyqhwqZWiZQ1wIenF9qVLEoCKR8xyBXqi035k+Y7TTrQgMEibzO/
	wfoAuqN8BfBAoCrgzGLcU8Hhe4ORSJB5x+Rf3zvlGxFA4yHNFzDokfH6OK9D9Rhir0ftKbVLIc4
	UmnxQvS4pY5oXEPRWD7Zg4PesO3nuEvjueIxH2zxw7az7ufyS7vaU8AgN2vSpzAYpkONzXigN1Z
	yTv2PzTT8iKjyeIh6nL0u9JRWYvflFrbVBAQWZa8Z3YOUHV9rRJXFPII74iwG9vpE+ilhoPKiAL
	MaM1FF+dVATdoEBIU/S5bwNC9R0Xse2Y6/W4qCf8nG4EwJx7bCpiO1G1gzK3Fq6pMyjU4o/8aMO
	hmqd8=
X-Received: by 2002:a05:620a:448b:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cb33115b5amr237595985a.6.1770898791101;
        Thu, 12 Feb 2026 04:19:51 -0800 (PST)
X-Received: by 2002:a05:620a:448b:b0:8c9:eae0:d1df with SMTP id af79cd13be357-8cb33115b5amr237593685a.6.1770898790490;
        Thu, 12 Feb 2026 04:19:50 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65ba5a45a60sm223582a12.11.2026.02.12.04.19.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 04:19:49 -0800 (PST)
Message-ID: <5f62d384-cd53-4e35-87c3-67b45241b90f@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 13:19:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490-idp: Enable PCIe1
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260212-qcm6490-idp-v1-1-80a45bd46ac5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260212-qcm6490-idp-v1-1-80a45bd46ac5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CIdDdsFrVi-HjVnxYyxOSeiCGxL3rUWq
X-Authority-Analysis: v=2.4 cv=OrBCCi/t c=1 sm=1 tr=0 ts=698dc567 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=6A5WHeg6HuGfttMquBMA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: CIdDdsFrVi-HjVnxYyxOSeiCGxL3rUWq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA5MiBTYWx0ZWRfX8CfRMB5YOcqF
 wTT8JguTFwfdyI0YTAdkLH9FU60qr98J1mqAVQVoXFAlQoBaDYDwFCQ0g9/yjaz+YkaCV1KXLbM
 Mlxt1IRE5xNu+F/nAIDTqa3eFM5Cpui8AEdGb66fr9r+YcSjj6x0SJ3qRVLRcwRQMBcUg10Sfp0
 j6qj5IxYqkUfbBZ3RvGAPXgSmT16b2qX5aLNKWbFYRxKZ7QNLwD/gsAHn5oFBsnMKvTCt+4Zy6u
 BiaNf/cW/yv9tbJ/U9GEU1637xSU9slR1FOGDdXfSW36daLt2COnpsFEqhmKeL7KAzxP1qN4HSP
 7rKfMradq5H6SiU7prV9XQKHZ+AQ4So9Zd/2Dl/v9cfH/J3uAF4mAU0aGc/n0zrfFvLuwLOIvZ6
 Vz96jjtC+TXDFvFCTS2JVQWnhJegyXxOGa8jhx/ntrKV55w7ddbTGM0DfIKwQLXi8/UIg0QDnNx
 9J0qTHykYv/1Yb2+uzw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0 impostorscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120092
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265070-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 129A312D6D0
X-Rspamd-Action: no action

On 2/12/26 1:06 PM, Sushrut Shree Trivedi wrote:
> Remove PCIe1 clocks from protected-list and enable PCIe1 controller
> and its corresponding PHY nodes on qcm6490-idp platform.
> 
> PCIe1 is used to connect NVMe based SSD's on this platform.

Is that a M.2 slot? What key (B/M etc.)?

[...]

>  &pm7250b_gpios {
>  	lcd_disp_bias_en: lcd-disp-bias-en-state {
>  		pins = "gpio2";
> @@ -920,6 +931,22 @@ &tlmm {
>  	gpio-reserved-ranges = <32 2>, /* ADSP */
>  			       <48 4>; /* NFC */
>  
> +	pcie1_reset_n: pcie1-reset-n-state {
> +		pins = "gpio2";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		output-low;

You're asserting the active state of a pin permanently this way, unless
the driver takes over, please drop this line

> +		bias-disable;
> +		};

Wrong indentation

> +
> +	pcie1_wake_n: pcie1-wake-n-state {
> +		pins = "gpio3";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +

Double \n

>  	sd_cd: sd-cd-state {
>  		pins = "gpio91";
>  		function = "gpio";
> 
> ---
> base-commit: 4f938c7d3b25d87b356af4106c2682caf8c835a2
> change-id: 20260212-qcm6490-idp-24f7b6a1812d
> 
> Best regards,

