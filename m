Return-Path: <devicetree+bounces-270427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DTQJVy8pmlDTQAAu9opvQ
	(envelope-from <devicetree+bounces-270427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:47:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F11B11ECE90
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33AC33027B7B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45ADC39EF10;
	Tue,  3 Mar 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YtJtOGVf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z7lvWPsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738F239B96C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534633; cv=none; b=mBO68+zWEMOi1c/c20l1atGwyR3jHH57PY1AcWbYOyu3tRT9hqFBoY+9xl8GpuVpFF4a3RV8Nse0YeM6NV6m81OBYKgGb5WvKDEQPmKHXF6g4Z0A2y+zDEtVhAuDaSmlGHbjECuO9hgQeiLiGAxJvlYnOrV/pT+kC+NngPf/fRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534633; c=relaxed/simple;
	bh=siapKVSE/S3vs4PHnP9yQG3Bkp9vHFc0BHCat//8mAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZmF+jPkHDVC/zl4HDE2XrYshCdUArrHqj1qzodQAw3Y0idaPD3UGKdCf8UXtPr2AaoqFGnyfsWI65XtLgOAsvfgwqlQBndVJDa/u+ejp18quH508pl95m/DvBaQt1sqNJf+/PiijELmU4ya5Kkh7qKR6FGoH6f9cVpdx29+umfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YtJtOGVf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z7lvWPsp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mqjQ2307642
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:43:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5pfyuRWSZFKBUiCvDoDVhH2vGDOGKztJzoBqTTWi+JA=; b=YtJtOGVf9NOoHI3W
	68StTHpt1KJ7+GakFnnal65V/g91MVJ/aCgCVqM+EkhrvF/q3jVNd8Hy1AUCQC2M
	hGPRFxCQfQYVkBU3i+dOC63f9HNYBRTltipzF5KAvJ+B5Uc9bIQHMeE/TuGB8Xms
	nZ7E1RfKBdUzRZPA6ZwOmX2uGekHf/IfxwGDZFfI9UqAeUp1M/XNyBAUEeDBoOC0
	eM4dgbge7DlFk3L9NWCuaG4sAecyoNub5/c57g0CLTb42bRlNcgdv4/b1qssOmyI
	+97/+DQ2MmJgoPmyJA2zs8aITBcliAQ/6w41y/65eJrAJr8pm33xCvqYWuXm9BVn
	jYqxjQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnvtu89sn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:43:49 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70c91c8b0so487587385a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772534629; x=1773139429; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5pfyuRWSZFKBUiCvDoDVhH2vGDOGKztJzoBqTTWi+JA=;
        b=Z7lvWPspudO2fiaLRws5SzEShZb4TP9TxWQbB+kX9ULjwVub99041TqVi9pT/GFczi
         stzvcm6kZJKnp5Rf6g/WRO/uwW3pkjdTJyu2OwB+elnt/tP+GtwpxIq8cjEuCcjwQLUc
         iTqBDb/5s5icf5vtKLWCdcSlewm/iDBVcEWih7ZBjI8E0cTCh3hB/j1Sz9knyNo4y19f
         ZG57nGySTDBXMqr8BZszbsaDDUMmNVhlysSI3SnFZrIfLbybBm5NEl0nR7pyEpBaf2/s
         J7+2YtV1MK2RTDCOFxbC9Iqg35ki/P2ZSeAwPrOrdPa/XHmEY9ZvKtTJSooowH7KWiNf
         6xxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772534629; x=1773139429;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5pfyuRWSZFKBUiCvDoDVhH2vGDOGKztJzoBqTTWi+JA=;
        b=FnKVM5CR9/XW669HUkbflVRntnFyvTMJlZLVQSELzKoTHmCcXyl6zUa5EFTw1kQxRV
         ClD3h2MqhiWMbLgSC1w+TU3PvNNx7aMGTZmxM5jXdZZPi0Cwv4MwYwBYfdcqVbK8gJ/m
         0svHFCsvslJOuRoGdEHQAZ4H9NbOcbq24Cs7ksnV9C05xIYQauGlgDL8YA0j1JSV7JFq
         ti6+4weUBfMWDRLkF/Y8iYjIyJbPzE+lRAaQVwg7UxAxeBV2dwSP1mc5tani9xo9Ff8t
         ga9nlTQdWwOJqqkI+ZbKQcOxpZwubzeMi5V/+R1AeOwrEM3fmjzYa65tH65kVW2Zx+yU
         b9IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfMWPQ1KWXutqfhmPqHXJ8Of1O0Sb3+yun/lbBU1fhHnJHeBkLzPVCkijECebt+fmI/r+xYOu+hBSG@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0uwpDLx4D6R8hWzV4kns1m24FXX2d2NZIfaXuxdcN4pIDmGBb
	fUcb0MluTV04Kj1IzYP6BonlL5fE+YGjDMlxt6wioEpmZjtZ6Q9zVKr7BJ+lBg/+Q+nr/OdX6IL
	u3TnFZ9eZAgEY8cKncjfAcajqBJPBR4F6991OeLs/iP7pzhAHL7DaGATA3iv8oshD
X-Gm-Gg: ATEYQzx3nYbkIxLSIU0WhOo8cIs5eKrQKLwB0+dIpTY5+KFZaEoMA8qZJ257UVXzOWW
	463oINX9mkqZ7IITm2wlc0lAzJqYtcsy9fQobf/ZiY64kWmzj7enPKjADAORbDJYBeGr3T6Rgc7
	la2eFbxbV1JQOlWbPbidmNyCiiXG+6FaB7oH+0dBS7kJjoDQ0n5CwBmb8YpQ6tEHvuwF9Ut6L8w
	1475vp6HHCdrJ7PYtezeop5NqJzCqC9LNW3yg4Z+bX4MliKlOYSEEwATJ5PuU0Gh1WeSJHdfeOe
	F1YrY4YycwzHcB9qqSpcU8B/5zg22rbB2fg6Lsx7NNQ0gcda6RRuG1exytSoV2hhtR6jVqvMnd5
	yLY9rAaN10EwO0jFBLiTNgmcpPzcpgZQJVYKQtOE1usHVyrF1ClmsJM7PXfcpCZGCtapl10v68w
	YA6qo=
X-Received: by 2002:a05:620a:7014:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cbc8ef4245mr1455758385a.5.1772534628599;
        Tue, 03 Mar 2026 02:43:48 -0800 (PST)
X-Received: by 2002:a05:620a:7014:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cbc8ef4245mr1455756185a.5.1772534628089;
        Tue, 03 Mar 2026 02:43:48 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac07b7c2sm4121165a12.31.2026.03.03.02.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:43:47 -0800 (PST)
Message-ID: <9c4ac0a3-544f-4dd8-b3ee-26a40a817e85@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:43:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 2/3] arm64: dts: qcom: glymur: Add USB related
 nodes
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com>
 <20260302-dts-qcom-glymur-add-usb-support-v3-2-883eb2691a0d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260302-dts-qcom-glymur-add-usb-support-v3-2-883eb2691a0d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: GhXuDfw0UtXWF85PL68D-0bcNwETEcWo
X-Proofpoint-ORIG-GUID: GhXuDfw0UtXWF85PL68D-0bcNwETEcWo
X-Authority-Analysis: v=2.4 cv=A75h/qWG c=1 sm=1 tr=0 ts=69a6bb65 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=o_jz2lA9kCOULBL2u_AA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4MSBTYWx0ZWRfX0KIrcqdXXHPV
 AgCPuB04nSUsJkoPuLyay0Yv+HEbOGnyjeS62GrYnINfaKQTMep9ARGSdHXnMF4Ms3t1vCIOb1l
 qJWraSsx9HzwhYkul4EV6IipCDd3syq2w1O5cgRkDedUxz4mEibcVS5bz5wYwjzVhQ6KCIEOk1v
 V2m+XFowwhGG/uKYB6KBE2KFBWSw7HMQ9dK75MM3IKbN8SAB0IBQBO8zIk43yXcna3QSYAniac+
 cqtYrenkDeNky4GC5E801oxWp7vvwcTGsDBxbV82l4sR0WT7J9h1iGX7ye4x1iK9KfAUfLhNWFC
 2jP7wVK29fX8NiO/qlY6UYlqg5k5r7I50W0W/GLPjoxNUZmhg7DtA5FTH2Mc+W53kKwJYQz28wQ
 ZpG2Msp11KG3GuGu7iR8n123VK9hvcv5SqzCqe4WxxbW3aV19ZVS1XUMd/3SARDuL8Tr6d/jlXu
 aCrnt2ZV/3KhySrk0RQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030081
X-Rspamd-Queue-Id: F11B11ECE90
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270427-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/2/26 6:09 PM, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, 1 USB multiport
> controller and a USB 2.0 only controller. This encompasses 5 SS USB QMP
> PHYs (3 combo and 2 uni) and 6 M31 eUSB2 PHYs. All controllers are SNPS
> DWC3 based, so describe them as flattened DWC3 QCOM nodes.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

