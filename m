Return-Path: <devicetree+bounces-275207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UND+OpMFtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:39:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B37283261
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:39:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E2036302C749
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B143947AE;
	Fri, 13 Mar 2026 12:39:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Sjj9HY5Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cDhcmAaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D24A2DECA3
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405544; cv=none; b=HOpIr/ohpw42KpKhI6NsTkm4HYjJ8eRmiCokQ3cMn7ncgK/yNJUh7boTksFytQ2EdKo1x1xUaI3IqS9l2flvrQSgfKvCFe1U3r82KvzZW5DBjE1/I9W+3sKg5dfI0DRlmrEP3ROjLu+S0X2Uwx3eJrfFWjmMRAmU1nVru+Kgru4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405544; c=relaxed/simple;
	bh=/v3O5LIsNdvmyFQOs3alTi+oDxl57BxySdABAtEvKys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OCIypFLPCKcBm6Tu/xW9/bCnNOAEoTfpaDNOixHJrAT0v3cMiDp4PEM5C+sWI+rBgvGn3+ziN/Cg4ops/HxvV/zJ5J18QWnBewlXnD1uvhKgmXkMw+S5Fn4OZ222w3RTCPx81YfSPrWl5BKiTivKV0L2oi3RAsvcsc7mkMbK1Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Sjj9HY5Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cDhcmAaW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAmph32390204
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:39:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YI9pyZxfoB137M+5pKNn/B7T09Jp1/+FGf1CCvYzDl4=; b=Sjj9HY5Q9yto9xT3
	2yfPBbeoUJz42lyWsgvUjl6WxZszoQGWJO3G4eO8S6ZSRyTnHVFYGMEaWreaKFwz
	EDWU1pILBaS12+krgGoY9VbNJaLsuImFKdSa1V64AC/YI75IhnX3H0VtuwbmhIYA
	/eJCwY2TwrrdKFos7TeloQIgVvMN+xSmuXVXBnHB6N+vkvlDtwqHLx3y/7DD9aVc
	MynnrGgLnFIiFNEvJaBAErG5n1LQD+HXzee4N7wh0FkKAg8HdBPuRqwMndRV6d3D
	X0mPmjQRrmtMBrvmCZNS1d0r4cX1xkmYbZFggoZcyzVQztppycM+a14GnQfMURRU
	ehP7xA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh5m89w5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:39:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb485c686cso104736585a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773405542; x=1774010342; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YI9pyZxfoB137M+5pKNn/B7T09Jp1/+FGf1CCvYzDl4=;
        b=cDhcmAaWe+xohylj0Gie3ewtZ1XBxFYiskvt4935rZw0A1eO+oQfXDoHqW/gNm45w7
         RaZ8YogR0JZCzEhPQzUAGra2GY+d3PxESlTZvjUJzazNEUyvqH15WrOe+0dQLwfJN80h
         fvDC2DhkkPEIV6DEmyUw7N3oIPpx/3bWpUIpX6du4rnJ9lquag+dpEWytadaymD5ovU8
         IoXxuKeXb1672lC+ON/Zx6CR2B84Qbc7ce9mOLwU4j6eRhfbelS9zs5i58lj1EN8BKdq
         MqNBADUGNzxS4PEr6+eRQelX4O+NUH38nToLjMSN5rD5qacLUdD2uBNg0svWgted8Sax
         qTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773405542; x=1774010342;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YI9pyZxfoB137M+5pKNn/B7T09Jp1/+FGf1CCvYzDl4=;
        b=QQtGIkajS5R7pJOdceWql9HdbZDXRpNfbXqnpaLe7EacDgs0QfPmPTKe0827P6Pd1t
         oGBt3j1Ttm/yJ/ZMBT6oiQC/L4DWJWOO2S5ityYOXzWyifLnh1EP/39uoPMHG1fWvHQ5
         XniVC5WfM85hAJ5wKz0/3jY78WSJXIxCJZ/nGhvwsNRPRaS8vOSHNE739z/+4/OVQcQn
         km2M2a96LNT5tJggNVMQiRNH8n5irbTCaXq2+2Sgep7IOH6aS5JiZ68kLCO94D5n674S
         qBsvzEx/7069L7s40uSaTX0X5bQ0mD+aaORSgibtrmO/e/Br7UlV8RUy10QEIl3D93Eh
         51Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUzfpwakoSmlRfGk4SHeMfwY2t4E6y7rxjucwX19cvDN4+dUOOUwa0c8CohQJeWq0v11a0+lWc0bDoI@vger.kernel.org
X-Gm-Message-State: AOJu0YyEm2/1JXv9dGXp4kpnt/JXc+DxVC+L8qYM+ADWcb5DBjNRis7W
	GafB4xgD69Zuaiiz7yW/X4+qLJBNBDqfLcNxSkByqRXiRSNWzwwo6qMxv1eYJW2zHmAYak9Z/UU
	wTJb2rOat9A6Z9CdreTlbYWCMJbJCF8lZ5pU+jNEz33rt02XQRVnQ+TZbRpWcCP2p
X-Gm-Gg: ATEYQzyT7wWK6oAg1zs5nJbpWr7WJ/0z6Vb84b2LBEfBEkzvVYhorrYpByc25JArmfb
	IEj9Ckj6muYhekymSFS7Dgn24jph3ZosAJc/hzIcC05dTjjL/QuINMMFGMWTNaHj7N8sRHvx6CO
	0jpBrgsqIj+4BLJoQyxxnpk2JR4hw/wJe8mtpWbE97PIvkMPttEbaYQSegV7aSUveDYmR/Gwh2z
	3emhamH8RBSOTiN/Aa1Fnml2UkA7HJMVrMko+L3Pv8r8SYLht4fAEtT3zIx8LLndcg5xIp9jEQ5
	mIwQN6FVxb2fKVHnWv7PZb7UN1mt2hs8mIOrhCeknXhEZmWXCYkvNfIj0tIUlFH48zfIPjGqxrl
	9RUaCuxUMtM3619scOVEl6Jrtob/Wcniam0dw4fa1meAI58cUS5M4uYjZVujrOnRI55kVOivM3a
	8VE4s=
X-Received: by 2002:a05:620a:29d4:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cdb5a7e0f1mr309515885a.3.1773405541606;
        Fri, 13 Mar 2026 05:39:01 -0700 (PDT)
X-Received: by 2002:a05:620a:29d4:b0:8c6:ca3d:4e0a with SMTP id af79cd13be357-8cdb5a7e0f1mr309512585a.3.1773405541090;
        Fri, 13 Mar 2026 05:39:01 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66350d6ec93sm1270516a12.27.2026.03.13.05.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:39:00 -0700 (PDT)
Message-ID: <e65ebd79-9edb-4001-a5c1-c4b6a67d5234@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:38:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium-tianma:
 Disable MDSS
To: David Heidelberg <david@ixit.cz>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, Petr Hodina <petr.hodina@protonmail.com>
References: <20260311-beryllium-fb-v1-0-408a580d125e@ixit.cz>
 <20260311-beryllium-fb-v1-2-408a580d125e@ixit.cz>
 <t4uhjpxdvjxda4dxkoxktv6xlxg3xvzyslgerluu3t2dzxv33v@k46gvwv4uf22>
 <137c19a3-136a-4e0e-b4ea-8cc474172d81@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <137c19a3-136a-4e0e-b4ea-8cc474172d81@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hwV_m_7skd5aHYb-HmI-eNpdgOizza5i
X-Proofpoint-GUID: hwV_m_7skd5aHYb-HmI-eNpdgOizza5i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEwMCBTYWx0ZWRfX7OJiumu4+8xa
 8eCyY2dbrX58U+hYtfGD3IOOJ5ZatD7VtAN/OelqlfuFc4vRkXjky0juu5n+JWLZ/zijXbDk63R
 rG1d51mfhwmRFoFNvADpcNZNQltPBaGAyLkwkw1cOQowLWqhtWbQ9FqIlJ/rIJmEHEg9GeCA9kX
 Jm+NWQQV4ueJ/HyMN9Lj/RhK8ctt8yUht2WGoYWpTlDB78KEzPuZPeUSQHoomBV+A+HUTMcybDn
 WVAfoQjrcJ13IPdVS1kVVGkjRUJc4ggHannQaaf2y26PY/nJDLRq8H4feP/iT5IHmxoblWRkdMA
 yr2wE3JMcLxe2DqL9LpEDh7lMXJ6yTC7y6W6HAT3KpnunGXPpT26oBcjSFFbw2esoossEggYUtB
 ijEG6vOeM0bpZSUHWyVrLJiqHRqvsHbqiMabCv5bkChafIXx4izoFeTh4exNdKz7W1vethdJZtm
 CeAWDwa/pUQMf+KR/yg==
X-Authority-Analysis: v=2.4 cv=S6TUAYsP c=1 sm=1 tr=0 ts=69b40566 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=sfOm8-O8AAAA:8 a=jvAo0GstzFGwFXuFv2AA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130100
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,protonmail.com];
	TAGGED_FROM(0.00)[bounces-275207-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 64B37283261
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 12:25 PM, David Heidelberg wrote:
> On 12/03/2026 03:46, Dmitry Baryshkov wrote:
>> On Wed, Mar 11, 2026 at 07:44:30PM +0100, David Heidelberg via B4 Relay wrote:
>>> From: Petr Hodina <petr.hodina@protonmail.com>
>>>
>>> Currently the panel driver for tianma is broken.
>>
>> How broken? Can it be fixed instead?
> 
> No output to the panel. Definitely can be fixed, but current situation is that we don't have anyone who has available time or device to tackle the problem.
> 
> I know it's not optimal, but on a way to achieve working mainline phones, my thinking is better to mark it as broken in mainline until someone fixes (assuming Fixes tag and backport) then just going black display (when we have at least framebuffer now).

If you have a person with limited time, would simply copying this:

2b973ca48ff3 ("drm/panel: sony-td4353-jdi: Enable prepare_prev_first")

fix it?

Konrad

