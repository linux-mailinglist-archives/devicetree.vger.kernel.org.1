Return-Path: <devicetree+bounces-199439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 936FAB10A2B
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 791C13A856E
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FF202D12EE;
	Thu, 24 Jul 2025 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IofTef/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA585272E66
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753360137; cv=none; b=RoZbZ4Zaa+etqLm5EwXfjQaVF2sEhiKw4XEH88Lf/q6b7JH5r+2jr8rebCpkaltOYiVacqx0xKuimPlmFEQsamCMU6a0xhx1/N2gP8huR610NtN83DaZndCuceSFbyyGTD9ur3cRKDlYHyULWDGHqix0Hb+DN/RwWBRMFbd+GOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753360137; c=relaxed/simple;
	bh=1oqfCn9o6XS0AyM/usZZOjR2QpFZGQRcynvBkNAXPpU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MB+ttSD/oDZjomac1VuFpu8/yetOgPNIU9OxHh/pGjvA66F1f5UJcf8xykF0ccLdAy/DlZpXFEXuLgD31Jx6VGbDCfgR7vZgc7wdCKPlzcCZESJK04DWrIpYOUgeSxfR8xzcP+0XEbwKrSjJeR12512yfujoZ/fkJznLDqsnzvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IofTef/g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OA0B3L018028
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3MaVShJ0VSJDrCoCdu3HeaxwcTF8H32vWjRkGaPxdKM=; b=IofTef/gj3RGDtvd
	ZFdtZbbS2T5vIOLZkn6DCXjHHvBLTe+Z2xyJcQKeA4F9ABCkU3Wab0KZQDOOFIjW
	Jamup/qlCiLl7fK0vdxlyjj/QJ+CsxlvyFINWzzQTqji60+oUUmvR8gr+WXB+q+G
	VEPvZiARmkHs6EdeqWpADE7SwRUKwQVfG2ea4ZI2GH5TtUY3d46BKvVasjXtaN4Z
	ceB+7bk0CQl5BeSp7WyE2weB5wSKCMK3dqAsOkpnY4ETiQoyv744iRSlm9LaMHqc
	EoFUXPmCstZQ0j5RjczKdWDHeNqRzOuY19ETiLPIVlxgwsvrBe4yW2WaNcuKJL7R
	prNSWg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6tty9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:28:54 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7de3c682919so18989485a.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:28:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753360134; x=1753964934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3MaVShJ0VSJDrCoCdu3HeaxwcTF8H32vWjRkGaPxdKM=;
        b=c8/crnh+NFfvBQH0Had2fnkYTCUSwny1QXQaSk2XlFrq7nLIcX/45nUPjU6MtsU1uG
         eI/VfUfCnYAUfxOQd6u/0WudDLOt/OcorIaYEHc90ml0wwIm7zHFE7shA3v+PBIAGzy8
         nS7SrF5/L+uuGW9/fmBofKhWrhkmZ9BBS8UDbhDxImCtjsnFWguqcI+BOkuWF8wgl1MA
         WzZGJ9LOnkhF3aRaBNBR2NWB2Rquy1JBasTibW9OyWJeAASjA0Y29N7pqR/5ffo3Srlp
         tLafSZYmthSN5BSIYjtNyDDZlfSkZA/gfjFCY3/zIOEaONIFdyGWuSscCYHLIYZuQouH
         b1zw==
X-Forwarded-Encrypted: i=1; AJvYcCVXb7su6g5gi/iesVGovcU4z31EI1PR7MJnCKri+B2RWK6bkqDSaszgM5k5W1hlB9X+38s1V+clQmbL@vger.kernel.org
X-Gm-Message-State: AOJu0YxzrElYSoABQYFnZvChRHweArgYPrjSQvetDK7U8tZQFHAsKiqS
	/45ZLuEHtuindhop0qGgQy7Z46P7DNo6ksf9XrAsi7N7XSlfqUkeRwNcLo1foCru9bgMQfiiUdH
	CfNof6FQTxkwX39ckvt5C2WDs7U2zfIYwWOJi/sZcbFaymxJqgOHuOevmMTMgfM9J
X-Gm-Gg: ASbGncv8xtexsat4HY3mTTLmrtQvgKx6AYq/EQcWMSLUnNiXbQCcxLsqgKNLTjwKM48
	AHJdviOG8OLgKR9x40yiPIZ+02qkSFZX/r4wRRpKhGILLBaVNJPcSnwLrom3UaS3QKt8UHNXWT8
	HrA19lf7vu5eqbTRObxepCkumTB4UADoBXv1URHRHs7v4fX6W45gfrPpLU2qDbvVAFu2c6XhEGM
	WbkvWRxIjvTWmEZF6jUaepNb5yar2BwG4Qaip1oWKBhXDp1+hmCZ1n1PKDXDauOctmgdV07dd2z
	TrOyYvhzu4CxHGsn0HOCo5/HtcrgqK3OiPHeRom+trqTcVyzggP1OqtuEXBcrO1u9bBYQk4W824
	/AiLOzBFpppC/pIZakA==
X-Received: by 2002:a05:620a:29ce:b0:7e1:a4c7:a819 with SMTP id af79cd13be357-7e62a1534a3mr327175585a.11.1753360133959;
        Thu, 24 Jul 2025 05:28:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEdsDlVJUbhOpmg2PSQ1ox06mFCUW6kPotDFU+P59DU0DATLsnjHTJattEpZD6dVxX992KkQ==
X-Received: by 2002:a05:620a:29ce:b0:7e1:a4c7:a819 with SMTP id af79cd13be357-7e62a1534a3mr327173285a.11.1753360133346;
        Thu, 24 Jul 2025 05:28:53 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47f956e03sm105244566b.124.2025.07.24.05.28.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 05:28:52 -0700 (PDT)
Message-ID: <8cee91e3-c83e-4ef4-ae03-af2f01e03dc3@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:28:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: move data-lanes to the DP-out
 endpoint
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
 <20250724-move-edp-endpoints-v1-4-6ca569812838@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-4-6ca569812838@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=68822706 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=reaxtgZRAgWUn-9b8AUA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: xqVRWqEMfeoQDkik2VChkzw4Z7Td2JWa
X-Proofpoint-GUID: xqVRWqEMfeoQDkik2VChkzw4Z7Td2JWa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5NCBTYWx0ZWRfX4USrnxysOXKN
 V9K2qD77XlmPvOaLU4tYKQ4I+Ltt35cd3roySRN2ZCe18oPJuab3Tdmv1xBdZRnvI9jN+A75TME
 0LKVxXO5qRw1hw8n8XN4JENH1K1WKRLbvxt2G6wbA0brgFYATK60bzpRFLWVK4/lftyBZRbANt6
 tRG+FOiHSt4lSep7eU6O92TXlX1Fk5e6rU+EZolvPOrji97K1KJp3FNnho7DgnJL7AuYsiujut8
 Ov3xrJPFwuXVf+Tg3cZxYwHeD2d/ypfu7i2mSMoIOdvtYV8X6TTcfixFGs7hVUuIX1dt29IigQe
 ltRwfHKmoennZv/QzFH48OMwglZqCnNTeCDRi9hGDq6yC1R1m3NBIB66OMqGxg0Spj3MpEq+b3a
 ovQ+dg4GB0G5FhyuQfOZI2byHO1QV4k/LoaoGcqYarZHoSLinRHOU63bdj5dUwKvyOYjajj/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=846 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240094

On 7/24/25 2:23 PM, Dmitry Baryshkov wrote:
> Support for the data-lanes declaration in the DP node is deprecated.
> Move them to the corresponding endpoint as recommended by the current DP
> bindings.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

