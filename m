Return-Path: <devicetree+bounces-270799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Nl7K7Btp2ndhQAAu9opvQ
	(envelope-from <devicetree+bounces-270799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:24:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDDD1F8551
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 00:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 432F53086061
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 23:24:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 725633451AE;
	Tue,  3 Mar 2026 23:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cPAAwHJi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fyRR66XX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333C9332EB1
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 23:24:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580261; cv=none; b=BMH4EE1ulZFKeqoVGZ1NJBdjwRjhm2WI0+1rskRO2MKqMhFDq4giptSdNtLvw7LliAVZw8OBe8fr66csD2n/FoxWscEsuGCsyFKeSys/O3y7DapXvIUDyXNCTtbhN/WNSAe9TEiHFbKTve7LlZdyYTrGLtOGugR5wL5Rdz6/gHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580261; c=relaxed/simple;
	bh=PAutGbbNgkbxJt2N6wJu86lYzCYZzLzQgxKPxhQ7hQ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WHY/mzyqj9+PvY9IBTJThcqRilSn/Bp+aWmGULSYlXJygvg2F2F/SfGG/frfKuGQs1ZZn0bDJAfFmU/9KYTHJNGSM+Sn8Azv6TZdwXOrbFzAQWDN+wzEJ5YQqkMtp8RQpGNuEhcs/UIxGo0QHnTZ/CLulVgbGiNuzfkptDEShEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cPAAwHJi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fyRR66XX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0WNZ686981
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 23:24:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=; b=cPAAwHJimnz9LQei
	f71pq1fgbqCSGr7cs8PMtxGBBo32WkyTIFkz5ocAxNAaljrVE/9jNBVaV7bUHy1B
	ThSZ7Mz25sLk5Ac28XQChxZsYXyg7RwlpjTXVHyePQQEKqNJwdea/81Q5XXuNos+
	sOAPlPHNkBW4e6jQJ3RS7ty0KQBe03lUJh7BGwaNRw1ayotCdKZ7ec2mDWi/gM9c
	0fHIzlroJX+i+D0kdhnMotHD8odWUsVVoIwIvjDqpL+gBciSRHOrDlLcBNJ2KzwC
	kIQExAhfy57duxnQDOgaWYhTiQebHR9Asg+K5hvU0H9USzWlCwk4CsWcG4sVYJ3u
	UAtBLQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3nb4vr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 23:24:19 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2be21c6e2f5so22043833eec.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 15:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772580258; x=1773185058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=;
        b=fyRR66XXZikDa+ZmTnxF6cSRbd0VAse3JcFJueAQ0SAr3JcjmGVwZpPo9WXv31Az2b
         YhBWJ4bSVMmJHRhvm+jeNwe6bTNJUn71wHddxpYVzyVJ6o6yUiyutk4BCdrYntUq48eZ
         otcOEfFx/U72C6o2Oq/4fxtuo/U0+q/fWRuhxYhExQ8FY3BZYmaiks4qUt89SPLLb28E
         8d9EJTXRifFYOGNrVIe9T0Ha5Le8O5TaIIpr32naPAPkG+qVDrmnqhmpHko80nI+uAlN
         HQ+9CmJ+Z08x94Fzloqe1nNMgSQzHqNpieibfvP67NNqTo2cs4X0nXE6WDuUmGbXpFv5
         9m6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772580258; x=1773185058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Agoo+WTV1u1Y1+T6EpYfbr8SfAFW7L323mOuRNku9gM=;
        b=XRbKL5gTkCCTcO0cLHExXv4IaaLaDdS5iqmBv4nr/AQsxbe8gNBeR4ueG9e6cavGbk
         RuJUKfviqkT44jHEhf6bBp3oc7mfQRD1PKp4Teh1al8ZHnddOhrdw4Yd531SqLWn7YX6
         XDZMZ2/QEg0oGOhu1WjpP77hfl2ihSHlhimr7wijOoj4VB8nikg9DRrFZ8ilyjr5A4il
         krWY+BzBmmVWTpzbkIYKO8XoQOlt/Gy8a4ghvcSREf6Wl4rdHulQb4G/AGBDr8Me+Q7l
         rH7V963HEv8foJGHSs/TPPBICgkszDr6DEVWKG2/gTjchWUuUr2WRIHJrWn3i41VyJHk
         83fg==
X-Forwarded-Encrypted: i=1; AJvYcCXPlafpiB3HUCjg4jthqYprLEugZJHO3eaPp4QpN5Rvdbbjh5Ub7Zxk5LU8DTCEGYWG5Y2p4AilKVK3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywmn0yHae9/rWKXI/Ks4UR67TFAn0rfBIilxdDivSPfQLVA6Xng
	FPNP/isolakTk8l769sAjP+IcsjtiLSRmu0kfKFlzPgPDTSNFHyCBqdUckd7IWqk323fVTb8XC3
	oDzkZtsd0v6sB7uYU+8TVOUTHt2YfGvvld4OTMKBM+0fLB8XjFZDfXa8A/yy2xTIN
X-Gm-Gg: ATEYQzz9vvbH5Upv6cdiYDop7zVt+IjWsU4IsRXTKPQ+pn7BbQMfwinc8YCriX1chRg
	kp752i+b7Nj7HDvUxbRU3HG7mhHjmHa01H4lMdwmnqh0IoQJE1dO4fYsZS7KFSlbrbahN6L/J0V
	ln6t6CSNOQUvBGl6Z6fnT8QL27sCws0chMNiYyPhHuov3NhXkUAU+rj27WLYZfDGdA9tqK52z8s
	/RVWocjzwmz5bIHEDY/gMWy61v4iB3Caa5WUwssZp9ia7yB4vjQySOO53riiYzztAEkT8W4i5OU
	RAMwpQ/JkEhtbng4U7dWz0/liqPuZqtsIeim3WZy+COaHKw/r7RmpoUv0/7YAJvGQxGH90YqzyL
	fCRN4tG7M9Ng6JINuZVvHLP2P1Ju5/x10KKUF/wa+YTnttJ6yCho0RxAASBilZgbq6eLjzhu9wN
	DJ
X-Received: by 2002:a05:693c:2c0d:b0:2bd:fd23:72cd with SMTP id 5a478bee46e88-2be310a2cb8mr18046eec.26.1772580258157;
        Tue, 03 Mar 2026 15:24:18 -0800 (PST)
X-Received: by 2002:a05:693c:2c0d:b0:2bd:fd23:72cd with SMTP id 5a478bee46e88-2be310a2cb8mr18025eec.26.1772580257564;
        Tue, 03 Mar 2026 15:24:17 -0800 (PST)
Received: from [10.62.37.55] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2be2c357d6bsm788690eec.20.2026.03.03.15.24.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 15:24:17 -0800 (PST)
Message-ID: <f83f616d-9114-426d-bc9b-42ddc839686f@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 15:24:16 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bryan O'Donoghue
 <bod@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260226-x1e-csi2-phy-v3-0-11e608759410@linaro.org>
 <20260226-x1e-csi2-phy-v3-1-11e608759410@linaro.org>
 <c85fe457-c140-441c-93ed-342dce32e604@oss.qualcomm.com>
 <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <yhatx2iuoofvsqpu5da7ohpyvzhc2y7uq3bhuhfuv6pkfpqrnz@75xei3bawzza>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a76da3 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=h69VVFRyML4NUzg0ml0A:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-ORIG-GUID: 0MrZPDS3XkpY_8VeHN0yYaPC8seEldzE
X-Proofpoint-GUID: 0MrZPDS3XkpY_8VeHN0yYaPC8seEldzE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE5MiBTYWx0ZWRfX4QAuRdaRyHB3
 hH8YfeX0duVZDPWgj1xWE2Vy0OzmsrVwQq6j1ep96NuZ0IUbtin5eZAyhnoBFs5qY4Cv9SY3uuk
 3MNgyGhHoGk/tYZFIMaiLhSCsobHYhWPOocHLq77H+7Lvkn5HSF+yrvsVEoVWAe5qNmDGzjCC7F
 5XPJP4OR3aIjTQ+J4SyjS5vbH89thAafO4a5OIiITLS9uoCVzMH2eipX1a7E8HOoC4FzLoCFtI4
 jCl9dBG3f6VcHIWrB7Cg4S5mre5cC1O65iqwEdI1hchXGjdogiwYsfjzTcK2zKSJczo0tfgHK8q
 fLfnhLkCH09mKr1L7kYpVypjn7ytAI+ZI9nGQR/gUdPkhTOiD1vlGKTbR6tbmXfWv8Oh68roQKj
 nK4KEoby8UCuw6npS4AxXuK124GFZV+sY2zq3vR9lqCqUkCPbrtj8atX6K4BHqgc/K2U05Gi/+z
 8VBJgTFswWosCjkl3+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_03,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030192
X-Rspamd-Queue-Id: 4DDDD1F8551
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
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270799-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijay.tumati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/3/2026 2:31 PM, Dmitry Baryshkov wrote:
> On Mon, Mar 02, 2026 at 05:51:24PM -0800, Vijay Kumar Tumati wrote:
>> Hi Bryan,
>>
>> On 2/26/2026 4:34 AM, Bryan O'Donoghue wrote:
>>> +        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>> As we are cleaning up the PHY device nodes, we should consider fixing the
>> power domains as well. Although TOP GDSC is defined as a power domain, it is
>> not the power source for the PHY devices. Rather, it is the MMCX, MXC and
>> optionally MXA based on the architecture (Refer to 'Voltage rail' column for
>> PHY clocks in IPCAT). There is no
>> parent-child relationship between the TOP GDSC and these in the clock driver
>> and it was just working as the required power rails are getting enabled
>> by/for other MM devices.
> 
> Which domains are required to access CSI PHY registers?
PHY register access requires the PHY core clock, cam_top_ahb clock. So 
in my understanding, we need to trace these clocks in the topology 
backwards up until at least the RCG, and all the voltage rails powering 
these clocks will be the required power domains. Having said that, just 
register access works even if the voltage rails are configured to the 
min level, which camcc does already.
> 
>>> +
>>> +        vdda-0p8-supply = <&vreg_l2c_0p8>;
>>> +        vdda-1p2-supply = <&vreg_l1c_1p2>;
>>> +    };
>>> +
> 
Thanks,
Vijay.

