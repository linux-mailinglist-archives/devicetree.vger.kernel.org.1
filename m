Return-Path: <devicetree+bounces-310278-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UGqeJat8KmqVqwMAu9opvQ
	(envelope-from <devicetree+bounces-310278-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:15:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF6B6704F3
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:15:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=WtMIXxt+;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=KyuAGIrY;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310278-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310278-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 870D232D2B52
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03789351C06;
	Thu, 11 Jun 2026 09:10:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8335537B400
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:10:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781169058; cv=none; b=MRkdh/rgP7aEMXYO4+eiEgVnGol757lAabf5mxPKHIOxvoPwY3eHE604lAfU+TXS7Oi5H6m08A5ufL2RGYfqsEzHBmd1RTC+Soa3shmJAxDvQncrvE+SmqwSHUdA4JKE3GD04ktKRutO/5dsJI4O7gA5dlvR2IH9Cr/gY699qcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781169058; c=relaxed/simple;
	bh=8m+5CG+b+WzYz8jVeXydTQJ4q8uUlvtHDf9bNzjklvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hkyCU+4h4a9AW4//rJgTfbxhRGlLAmaQfYGAXhpcOLdStCqn/sX1AQ7BWSz0S+RVgO5Rl9szH4atadAFhi/zRXMbyZD7FsCekh+jrFUuzV/Yi6B9iZmOJ/W1OYLDQPDsGHWcZSlmeVMF1Lcdmf+hPZneI5reejgR+I+o/JwOOtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WtMIXxt+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KyuAGIrY; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65B5GGO73863257
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:10:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SWDsntKAlbRqYQFJ9sixUy5ufYt7jtVIUopuYaPGvWA=; b=WtMIXxt+KVKYeuBx
	IwH/e9wuNi8f86Mk/3Ci6KG9gc/s2GV/WIMwMzMODlt6ZbHSd++JA7UL9THIan7H
	z9PKbCn1ysEorvYQbSI0ecyC0IjslICvDg95GIXB9JG9IuEzaBsfHS4+c3KNUgUF
	vMoO3zbgA0xfluKYTVphRU223hib41aVWo7PZgE9yjmTOYZIxgrOVzFWI6fJlO9p
	LRYUNZssvmMFSgsc9aPoadFMwqQ07vv6/1idryGZpZ8LxxNzqEFAkL2Qw4/X8OGw
	J7n0MqRHoDmUhyEENQwBxVt2V4BrP4b4ab4cR6VtC2CserEuZoMaaA9KkzWBDph9
	wwmzdw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eqe6sjpj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:10:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-91550f68e7cso183382485a.3
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 02:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781169055; x=1781773855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SWDsntKAlbRqYQFJ9sixUy5ufYt7jtVIUopuYaPGvWA=;
        b=KyuAGIrYPq5ENcVb373Zte5M2diQGkpT0vW9jQ/QwCotNBq9649ZjhNKlUGgiSAibL
         gKnZgiFZdGqLp0fhXQbekQpEQFcaURDMuImrnhZcEHE2e19eFXHMpd9HXf53lJAjyCUc
         YC3kIMyAj30EnNlCqJg53lmVQvuznsxX7qQAPVgPS1Kh29ZqFDq81zxyiY05abDKyhlq
         cxaPrS8w2jsgRDDwnL31bO+ryaIvj/Kh4Di0lw9xA6k3SxDjydKqZGaYIuFyC0DDQa5M
         vZiH6QlMi2MPl7zA2q1xqCZGRaFfO0m3GZSPPCcXrtQqGaCV8b/DcJBRVFs0kr9/NWzm
         JJzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781169055; x=1781773855;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SWDsntKAlbRqYQFJ9sixUy5ufYt7jtVIUopuYaPGvWA=;
        b=WTLY5f28zA/R4O/Z+EVFPtY1jgQdgYiaKPoMg3QJliiM/6ZCGcEHvIOrBPQNyjoZ3a
         KetL3Fk+cM8RnhTb2LWUDifiQDrmLbbuosI6teFo1ng8cTo4AOIVZNken8JQH21UD9el
         pwo9ieicYpmcbNIt8VghDK1Z8k775qGGFgHzOkB85heC0hrfmEE0jPQWkRzNOVbx17XG
         LOcID6QEnQKJjfrqUr03IjctazzrttBWPpw6HyMDnvBs2TNLGd1pi2HXCCgsWgL1BWQt
         /wRq0il9ug+RGe524aq7IRSq/HnkZUbH1phS3GUsQv5FFFY1Z9nyBNGEH/NoMs0KENS4
         utEg==
X-Forwarded-Encrypted: i=1; AFNElJ8clye5scqhrqGnZmcvwJpt5mEB4A6tpnav/zPOEGfkR1aW9iyjrr8a/UFXJj9Q5VPcKxutdsl/b4F2@vger.kernel.org
X-Gm-Message-State: AOJu0YxcyxQPnW2BYN7DEkZpSJddroiFm0t2xazhqYeqwRfX+LilKvh1
	IW0WZYLfolsX/B4imrLV6KeHwbiXoINPYa8MZX66Pj44jx0ps0SH47DaNWPKo77PVAGXmxiWsZW
	RLQxgHTAhrfcX1igDqnUR8Tntmn0EYatjGAjTWNDO8cEDdiL793aYu9Lho6SZB2yh
X-Gm-Gg: Acq92OFUUrBnGGO08JbGixiwt9h6ToRsfC7NILawFg+bLOMvvruVp6ZH0flJ62ZfFS9
	hVJa8f9U45eGyiOjNSVkGf25VAUWltrQKfvDJz0AzJFrCsgP9ehBZrHriR02pWpZeOSdz8G8QnY
	aNtrxmqQpE3wwUl0fLpuUGB2+OXv45ZYQTnATF7EJkJ02fJFZM11blu7/l2+ZpSh1zyEjtSl3zr
	9bGmIkAR6fTajwqOHDAZKUJUlK1T2m3tICa7pYCAswo41a4o4Yk4fHwOT5JkBoF152TYAzyb+1s
	gnCwnRD7WUV4oDUzYJIqvN2bFY9b4Iqrsv64+TQ42e75hq7OfFRqfly3nufxTS2xJeIvjgHD48B
	HIB8q5ngls2qD7KF7vlK04sotidGLdAJVy6NPGKHqVB7sPiQQRzx6SxFr
X-Received: by 2002:a05:620a:4553:b0:8f1:9e59:2208 with SMTP id af79cd13be357-9160acc6f24mr149935785a.4.1781169054962;
        Thu, 11 Jun 2026 02:10:54 -0700 (PDT)
X-Received: by 2002:a05:620a:4553:b0:8f1:9e59:2208 with SMTP id af79cd13be357-9160acc6f24mr149931985a.4.1781169054368;
        Thu, 11 Jun 2026 02:10:54 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfcb668ddb4sm37364666b.57.2026.06.11.02.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2026 02:10:53 -0700 (PDT)
Message-ID: <61fea0fa-d7af-47f4-a3c7-21d881090008@oss.qualcomm.com>
Date: Thu, 11 Jun 2026 11:10:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: shikra: Add BAM-DMUX support
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, chris.lew@oss.qualcomm.com
References: <20260611-qcom-shikra-dts-bam-dmux-v1-1-43d0b43d41ef@oss.qualcomm.com>
 <aip3_fyE8tMtJZIW@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aip3_fyE8tMtJZIW@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4-J_tRL_-BzBNTk2OFM1Xjmyh0_O95tc
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjExMDA5MCBTYWx0ZWRfX0Tm06TNGCrNO
 V8Y7gNriWTz4Xa9/nChN3TihDorK35lpQN3cYDH4zPZ/N5zoqhxK2qCUHaS9kmhVcG+PaH8uQfe
 1wqGqBORyz7OpW5sibr0WMwxHelloqk=
X-Proofpoint-ORIG-GUID: 4-J_tRL_-BzBNTk2OFM1Xjmyh0_O95tc
X-Authority-Analysis: v=2.4 cv=Kux9H2WN c=1 sm=1 tr=0 ts=6a2a7b9f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=PsAYBRyc5tNDhGAdKQEA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjExMDA5MCBTYWx0ZWRfX45oLpl8e1yIu
 t8MkHPdRU72ZXuFBwjPjFroYZV6OkfRFEWH7Um45rNl2Ms3ReVuyvpHz6FAndEGyJURcoI6lZgl
 JZgOj/SzGIBahsTDg4FXT7Chz5BKJ+3/1byaY92haYXMOF/GSWECuy9SlPE01+xKCrZQGTWxvuM
 NcAk4DZxRhsHLJ0bJiTHeaHHxeOr7YGbP0aVmH8STZHTn4KNzrhuDhVVKRs1niLBPHuUQwCsOyY
 PAkywUwtgCfzraFqvfssI2HQYRA6JIWxnC52BGlThRtKjweo9cYdqOpTMUOC6KDdxaniJgzA+OF
 /LEL2Zyu7XIt0ukQZfPYy+LUz1LzHCfiBfY+x/wzzm/EjCuTLJs+ahHvLB4Gpqq2qpRDZTYzCw7
 ffdivYO9zDaLrJAUMsz+PpaxI+rr5dX9yvLV9+rjwuiPRKz+g9w+/TjNPx8oESMGqupKXXm9OW2
 iKpoOHvom0G/N8o9Q9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_01,2026-06-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606110090
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310278-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stephan.gerhold@linaro.org,m:vishnu.santhosh@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bjorn.andersson@oss.qualcomm.com,m:chris.lew@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DCF6B6704F3

On 6/11/26 10:55 AM, Stephan Gerhold wrote:
> On Thu, Jun 11, 2026 at 02:11:59PM +0530, Vishnu Santhosh wrote:
>> Add required nodes to enable the upstream BAM-DMUX WWAN driver on
>> Qualcomm Shikra SoC.
>>
>> The SMSM (Shared Memory State Machine) node provides the power
>> control signaling between the AP and modem for BAM-DMUX. The
>> BAM DMA controller node describes the A2 modem BAM hardware as a
>> standard DMA controller. The BAM-DMUX node references the DMA
>> channels and the pc/pc-ack interrupt lines from the modem SMSM
>> entry for power control signaling.
>>
>> Signed-off-by: Vishnu Santhosh <vishnu.santhosh@oss.qualcomm.com>
> 
> I'm quite surprised to see this 15+ years(?) old hardware block being
> brought back to a new SoC. Is Shikra not using IPA?

That's correct.

Konrad

