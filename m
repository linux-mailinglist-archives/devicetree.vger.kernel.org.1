Return-Path: <devicetree+bounces-262036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNYmOxt7gWmOGgMAu9opvQ
	(envelope-from <devicetree+bounces-262036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:35:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5007FD46E0
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 05:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8BBDD3057488
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 04:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E80246798;
	Tue,  3 Feb 2026 04:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KLXC5Ozs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Id+Kw76Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C1E214A64
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 04:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770093336; cv=none; b=Ddy5lVgYZ5kUdDMTrqbCphtGBbKgsL8e3bPk2Hqxkbj2Y3vmTZXJaMMDmVpiYBNHX54w+7hNP4UP9xMWcf4gubPxkqal04HsigFGdiPqdl3Lk5qGbNjjLA9IBEJHZDOQzKu/584/lbvhVgEETm+YE5AW/emrFoA+uDHpP+khhn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770093336; c=relaxed/simple;
	bh=N0empT8aS3iRorkJfXhGoz5kfNxcx0kGY6K2moaU/pE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GdBNpjDQCJ0aJ3HQiwrMFWtzbt+ooALPqGawH2c21T8qmVYwk4TMieCITr1T/9sUarZfBPo233L0tcenAHqQRaimi40r4DqMc5gHuwzsDAllEwlLql3lOPPcxn5t2PUZQ5kcaOPgsM+sqSGSLrPK6ENIUzsAK3wjrnkctNai3Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KLXC5Ozs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Id+Kw76Q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612JEtDt3916180
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 04:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LtYEhTwHK16k25oCFhQuX4v/YNrzKopLniNId1MGKG4=; b=KLXC5OzsjyGrZVUI
	pehRuQsS0Y6euG1q8aUDosnwSuX0E7/3beb14dDcBDVfiN5zw73mumjYg9tnJO3r
	0IH/akkf27a9kYD/k8YEjWBgajSzuz3dKvoxG0Gr1N32L4piHLJVDB+GuoswcIz7
	ElMa/UGN58wTcJtlYAGGnhkwnUwrQthbL0/uc1yP9giNvaXoRtBGZE7jy2wFq0Ky
	3oFecBgHh8Ug8trnUkp5DgcVJWuUHFx/E1uSoMUJ9v2fMfNA78ajyXeeAw4K/FCx
	ir09CDk4LRFGiGwGJwlexFqNVI4s3Bk7yd6pau20G6fNxj7l9m6upvCKR8gXdZvh
	bhIOVQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tkmjvxr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:35:33 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34e70e2e363so5487197a91.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 20:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770093332; x=1770698132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LtYEhTwHK16k25oCFhQuX4v/YNrzKopLniNId1MGKG4=;
        b=Id+Kw76QpC7M6suJA+5wvz8tDXlRHNPFFmDh9aXMi9tpb7UGoF3WLq0c857l/3o+Qs
         NT4oPwYtwQL6XOWHMWrxlu9F9J8kIYrsssfPZ+z/vMgtFGqqpX3ahhkddOO2KMv9qf5D
         dcDUdhGecsstpqJjQo2lL8jdSZp8iMXR1z/Y0nHzBr9Gq+m+ELAjSCOfr9DODBxkLGHF
         OeNNbTjVhZB8swC/yhAoYfHv5XaxCLe4Niflw1Me77IjHsqRWofo0w3fD7zs4A3Y8dP8
         We4UQN0v40lBtTNqfRYh6l3PNBOtbWluy3U7eRmdx8v3Vix4y+OmIg6JQgb3Kw7H3L7U
         PHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770093332; x=1770698132;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LtYEhTwHK16k25oCFhQuX4v/YNrzKopLniNId1MGKG4=;
        b=H0dF9Slxx2DmunHpE4X0sdJ7VQCNq6PZiwQgFMkpb/aGXBWvVMbAwv8oEXT4Zggiw0
         TImSSq2GTlQ1u4yct/eglFzksbl2a+k4ziOKcNMV6KUDU2RDWunatOP50tD6NMUUGUzF
         KPCrWdkJMVyTJMbITq8gXU4Gv4xJ4PVg0GrF7woGSDE1rUA4cGCg8W0Dd5ag7m72nxT5
         ZSzUWs9nwQUWG+NYa0YIwBSMx5VbNyWRXbh2Ic/tIOqQlHkAAddJq1wA9IXaisXmb9e6
         OzUhTm6uoukJPvdb6P7Yoee00w09Sz42nXuQzA8rgrXGciSKWyDtmk4DIGc5DMj/4Krh
         imMw==
X-Forwarded-Encrypted: i=1; AJvYcCV0gVBygqDO7R1oE+M0eaD01sASF6gYaEWtbcv5fv3xntKAj0iD2T1kEmBcIgg/x87GHSZrKkQEIebr@vger.kernel.org
X-Gm-Message-State: AOJu0YynvN+bedK46zOrajoiph+aJT3HHi5dipTxG91/4m6678KaGgAV
	2ZlXg7LdB2fu2DwynevZQIJx9oiQYTr24ZG4e3aXerewkC5eDsf1cktIckLzjNrLQDKQ7BFATVk
	NfoF6YvgL8wsg59rVjEBCaxF5CLKY9vEqnCDOFZxLitTYHfQ70/UtdW+YQLB9zYnb
X-Gm-Gg: AZuq6aIyZ8Mp9pNiptaYG/gVmEY8YBe46b7oFBrsBWC7meDplzwrsp0L0W2pB+RujNk
	armIwQOQkR8Vka9SNBfxBViLHT2Wz6/x+CBalZzmo3oRwy8xXd/6juzl0J5PX87fS7jqomvIS0G
	Qw9Rndf3dZh5EP7smyoJmdCaGogVk7l9ffW4HSjP5p63/voNsurdvBcs7uzrewxf5IusTwWaiN0
	IQEIbpxKIv7ttLMSpyrRuobsSfiWj/+yHwa5HgqrNoo/d9yCDXKmAfyPOcXBFMrXkjzQD7Ob7UW
	AqaCTHzJ84ey0En/0ay5ZUzRPVT62NItxajb/2m5i3pC8bz+neo/PRP7o/CWWpLBJtNaxj/GETj
	8oiZuYrK5BAdWPziP4sXIG4BcPedK85w8kMibctMgneuc4ZNo6oztGg==
X-Received: by 2002:a17:90b:4c:b0:34c:6d33:7d34 with SMTP id 98e67ed59e1d1-3543b33a1cdmr15504198a91.16.1770093332465;
        Mon, 02 Feb 2026 20:35:32 -0800 (PST)
X-Received: by 2002:a17:90b:4c:b0:34c:6d33:7d34 with SMTP id 98e67ed59e1d1-3543b33a1cdmr15504167a91.16.1770093332019;
        Mon, 02 Feb 2026 20:35:32 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35477615e32sm935276a91.4.2026.02.02.20.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 20:35:31 -0800 (PST)
Message-ID: <cc9e8e60-7f17-49db-9a67-18b42571ccdb@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 10:05:26 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-5-417ab789cd97@oss.qualcomm.com>
 <5zqxloovexknbuhknbafc2trf66d6zwtvtkhjbchmbndxg2j6u@3giwqjkd2vl7>
 <20260202134402.ochfxv3lnju3dioa@hu-mojha-hyd.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260202134402.ochfxv3lnju3dioa@hu-mojha-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=TaebdBQh c=1 sm=1 tr=0 ts=69817b15 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qUomdUBryl06OQ5GzGYA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: xhZ7kmIDQDz8fYpvJvCjKGlC6p4K9qTa
X-Proofpoint-ORIG-GUID: xhZ7kmIDQDz8fYpvJvCjKGlC6p4K9qTa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDAzNCBTYWx0ZWRfXwmcvCsGtM0t7
 kJa/RsEPeZ8Rq800nrTa/xi7uhq1S+pO8bMIeYbtLk32hGCxuaYOC6UhfsDc+OBVuxtWZdRjVZN
 Ye60B6AOGoP7tS808P/iNor4B/lpZvJkHVUwcw7l2WbAWXZwlXrISCyTC5wTcmcvJwdPlza3pPn
 PWvrx3wS4L6TWACg/PuunDtyIv0MGRQRF2F/wUjHmsh07np/dzKIXRveQdQhnJLCxWFpovcWsSE
 QaNjrJmRd72tSRVWdK/7hCYqoegQQao4XmTa7YZEqkooa7g4cY5WeGu5RmJJvIfoEle7kx1M0YH
 JOnbDxIiI0eqT7vHgQ4Dq9SodbGxEbMgYaLuI9ouZTdy194zdcoCLdubcUGmaqQLkoO5zGJxy5H
 5lrI4+6a2JMue3poLQC8Ix+i0dwz7gZMGOj4zk6APbffwFkDH40UqkiyKpiO7gGd0LRZaWHQi00
 c/sxvRkWL31JuA6YpeA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030034
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262036-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5007FD46E0
X-Rspamd-Action: no action


On 2/2/2026 7:14 PM, Mukesh Ojha wrote:
> On Sat, Jan 31, 2026 at 10:18:29AM +0200, Dmitry Baryshkov wrote:
>> On Fri, Jan 30, 2026 at 04:14:34PM +0530, Kathiravan Thirumoorthy wrote:
>>> Add the "sram" property to the watchdog device node to enable
>>> retrieval of the system restart reason from IMEM, populated by XBL.
>>> Parse this information in the watchdog driver and update the bootstatus
>>> sysFS if the restart was triggered by a watchdog timeout.
>>>
>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>> ---
>>> Changes in v6:
>>> 	- Update the 'sram' property to point to the SRAM region
>>> Changes in v5:
>>> 	- Rename the property 'qcom,imem' to 'sram'
>>> Changes in v4:
>>> 	- New patch
>>> ---
>>>   arch/arm64/boot/dts/qcom/ipq5424.dtsi | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>
> I have a few more cookies (stored in a fixed IMEM location supported
> downstream) that I want to add, and they are available on all Qualcomm
> mobile SoCs. Should it be added under SMEM now?


Mukesh, you mean SMEM or SRAM? Do we have the consumers in upstream for 
all those cookies?


>
>
>>
>> -- 
>> With best wishes
>> Dmitry

