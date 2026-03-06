Return-Path: <devicetree+bounces-272200-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AOtdJXTsqmmOYAEAu9opvQ
	(envelope-from <devicetree+bounces-272200-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:02:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5CA223542
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 16:02:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1FE7306114E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB8593ACF14;
	Fri,  6 Mar 2026 14:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I751G9oK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BA2YF/XT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B29364936
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809168; cv=none; b=tTb2al9Czy8lij0BcABepqGGtbztrQD1vsQTTJO07V/zcdjei4m4CvnDzPTqvdVd8prL/+cK+IWUESvRzaV8sSoFhxBbafE21YjvenuPs/I4Rs2YU0noQogMnNRuewmqOC1DoxxcSKQ24Rbnj8UA49IYJ9qjAYU4pskKGn9uzL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809168; c=relaxed/simple;
	bh=Qf5SN8oBB6sk6mfEymupZxaOogkh5lbZYQn14d4RDwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rU2HGP1NwK7TVjnsrZjIk3GCaqFHoWSbhuZ0BJmHBd3WLN7GQXWpGNvSmK4jaPGLwC/Dyk4KN+gj1+drEYKh2Rj8eCbZklXST5a7As17SGzNLjQLc8t9P7fvZgrebYow3+uvX1ffZP1dOZf8t5vQhA7zzAM9UeUzJzWqw7PIu2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I751G9oK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BA2YF/XT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbGFm2022722
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 14:59:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NjEZs01B4NI8XD+SfdF4XpRw3Cnculfs18u066w5K7U=; b=I751G9oKPcEcCL3n
	9HPArKCTVpJsoovLhEd4jsXch/XMZdPrGMZDdnxd6lclkdsP99SyOZJkzGNm4o5w
	mIg2r28qZIOLofFFC2QNInxN75Kv0KNiFomNWlmguXsCpZ9/JjMiZbbKGzKG+CMP
	Dq0vAJ8zZfx0uuiNW0ORnH0FzsQ5jQGgk7fgpaakSXQ3xB+DfO7l13V7R+1NOTmW
	83Jkonm0zfNj5NJ1Jimne7/srGBNqZgZohv4DP6PaOpO/WyJGCCh17rajy3T0rf7
	RSo1ASHuN4myBByeid+V1XR/TfQ2Y3uu++JA5seQ0DVfyTCuyc3SvvB/JIUwS86S
	iPcpkQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqfg6bj9s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:59:27 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae61939fa5so100375945ad.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:59:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772809167; x=1773413967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NjEZs01B4NI8XD+SfdF4XpRw3Cnculfs18u066w5K7U=;
        b=BA2YF/XTkITDlobp7D4fhQANhp9aD80RVaI3xWSzY80p9U5mAurmyJYJvsxmQxESkZ
         zVK1aT1fLh+7KKU1xt2bVWY15KERAYqiVBuijbgZRyoXcR5zoDyIDFWyWZLv2PXJahp3
         2I8ghgmEon0vCoe3yABme7ml9jxkqdRbuDmBFZmcMcWiVNfRTR1jY7h2V7vVasfL6Icv
         QYCEqoM0n36O/TH3DQ8AaxN7t21GBDepDaLMpfoyiH/BCkIH/D7zH3qAbYDfuO+qjYtR
         BWRimGiIW8YGqnRch8iEBwy6ZQEBiieNtQVnRpjCzrkDiayK6+qIvsGkvB+oVqndTy77
         5pAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809167; x=1773413967;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NjEZs01B4NI8XD+SfdF4XpRw3Cnculfs18u066w5K7U=;
        b=X9GAjm8HXYcjlZhuSY1pWaJX0Toz99ORtOvTBOTumcUAsozU4iR/l7Dmeqe6U5GMY0
         Vz8ZK+HI/pIhDaXnqofY/vIXi7NqSbceqBb2wiXv1VjpnM30PAsXAOndzAMkVMyRqUle
         qL0/xV0VPGQWgg2Mugs10deP781id6SZoArLRYq7dtIBk3keeOHt6nZk+RiBKY4BGN61
         8ONFLQvdYUIhtJHXRBOX6ocs7PfRDDSIWiWHryLS/kSmO3gbb7J2BFnYbAzie2tZE2eM
         Gnj83443F8gpGrb7zHZWTXVXTHXLu6roQvlCan+9tVDQEmBDaYDtY9v7xssWauIXcTOe
         akhg==
X-Forwarded-Encrypted: i=1; AJvYcCVXUWvPgrzNJXjza/6egCXvtPI0Kax6zrs2jMQS1puTYjzx89/rwy0HW6g61D5gvbswiMJ6mVs4CA3x@vger.kernel.org
X-Gm-Message-State: AOJu0YzpVVTWlU2GQHi7O60EGH2d8eCsVV4ouMJVaDVHFTzMhJkkhZhW
	WcK+hydB1XYI26qfZyZgQcKX97wLG0Jx1/ulyd3oT8BKfPRAB1yEGB8Go8Lz1U2+TkHBeS93SQW
	67s/X9UluDbKURUtzXnxhfX1G/xzX/GQEvtOUyWj1O4N2xGNGVl7hAM8v0zXek7DY
X-Gm-Gg: ATEYQzzIDZxmbQuRrqyMBL2c4WNjBmU6ktRVPBoGC9uAot8AyGr6whkgvvI9lbMk2Jf
	Ods/UOU0HbM6dCzJxRKbfYMWczmCVk7fH1lZnc/gcWlFpU8sJlBfKNmo6U0z0XokgFFT6v+cXQY
	NPTD1rSXVxIM10tPz19U6rdiG7vT3ivLPFuz3sjF5ESALIhDywFXTaOY7AK2xOY4QdE/zi9y1cr
	mNN1r1xtEXxgT8FgLPRw88A/5dJY0i8nJp8QMUdCeqty53qF8iG55tefsuZ2GCg+UW5wIAKlcSx
	oNGI8uQ4O62R/RuXdnY0RnuOI2s6CHk3xkYH1/p8RxwH82EYbOBWoSmvA/3NrofKKP8QXqLDiup
	RmjCWSM915Mxx8GbzQUnKxJwwMPFPAhbKFp6/Y5TAGCV9WM95vnRgqggWdmrILbo5EJy1Ywn/wo
	2Wu6npErr5qlM=
X-Received: by 2002:a17:903:f86:b0:2ae:4029:2196 with SMTP id d9443c01a7336-2ae82481fa6mr24068645ad.47.1772809166559;
        Fri, 06 Mar 2026 06:59:26 -0800 (PST)
X-Received: by 2002:a17:903:f86:b0:2ae:4029:2196 with SMTP id d9443c01a7336-2ae82481fa6mr24068195ad.47.1772809166059;
        Fri, 06 Mar 2026 06:59:26 -0800 (PST)
Received: from ?IPV6:2401:4900:88f5:81:e13b:ce78:7823:d9c3? ([2401:4900:88f5:81:e13b:ce78:7823:d9c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e9b9c6sm27652635ad.29.2026.03.06.06.59.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 06:59:25 -0800 (PST)
Message-ID: <706678c5-254f-4856-869e-2e54761a1686@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 20:29:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] clk: qcom: camcc-x1e80100: Add support for camera
 QDSS debug clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-4-dbbd2d258bd6@oss.qualcomm.com>
 <47049136-db4a-4ffd-8cbe-9d1362b783ad@kernel.org>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <47049136-db4a-4ffd-8cbe-9d1362b783ad@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cMtwbTI4xBRD60P3YYkb9TR7M5V-XT2W
X-Proofpoint-ORIG-GUID: cMtwbTI4xBRD60P3YYkb9TR7M5V-XT2W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0MyBTYWx0ZWRfX4u7hrC/o3La+
 lt1UxrdNYVuyOaMgCwBfn3e6ZGm0eYwbyW1vKiGvQi0RaxhNvqCU/tpXKqw5IJuEUnfkwV227Fr
 F3YHH9+Z6Y8ecA3ecYln6SC+2LKxpDFZFhniEZYwaAcI3nshDRAdCM/Sghs9Ki3Uupqxd59SQc0
 SmC71zU7nPQZH5YeHfZECMu0YLi7e54QPqbnZ7sb3En1+YOxtw0Aou8jbW6306NDnTBTNGVvCIl
 XMhWyCl6Z0jVRJqO0YSGLEoRPB2lORgQpZZGtWBjWB6EsIEJg7vN6IBLNslMgyUTpAW2PT2Gj3E
 NvtqGgGDlXREbVm6qs4oraX94qctwNHmMm0fbHETrHLNWfI5bTBX7yQ1lWdBAQMAfsYgNEuIoRO
 kC8i/d7lTu2VsbpmLpUtV6j1O3DjVDdSkAEUdWTdBXI9yoU6ch9NKYTA+ROMXbHNQ6rrc7fnrC7
 3mfat2v4e97ALV3k3bg==
X-Authority-Analysis: v=2.4 cv=XKg9iAhE c=1 sm=1 tr=0 ts=69aaebcf cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=ev7iudrIffBU41L7XcUA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060143
X-Rspamd-Queue-Id: 0F5CA223542
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-272200-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/5/2026 5:28 PM, Krzysztof Kozlowski wrote:
> On 04/03/2026 18:40, Jagadeesh Kona wrote:
>> Add support for camera QDSS debug clocks on X1E80100 platform which
>> are required to be voted for camera icp and cpas usecases.
>>
>> Fixes: 76126a5129b5 ("clk: qcom: Add camcc clock driver for x1e80100")
> 
> NAK, not a fix or describe user-observable bug.
> 

There isn't any user observable bug. Since these clocks are not added
in initial camcc change, there is a comment on v1 to add fixes tag, so I
added it. I will drop fixes tag in the next series.

Thanks,
Jagadeesh

