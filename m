Return-Path: <devicetree+bounces-265008-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kD5PKMirjWkK5wAAu9opvQ
	(envelope-from <devicetree+bounces-265008-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:30:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1897F12C83A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:30:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 834DF306B3AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341A12DA75F;
	Thu, 12 Feb 2026 10:29:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g0b6HYje";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZIuaO9mN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205742BD597
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770892172; cv=none; b=DzUcjPWX7mlE3dCC745DYvT7cqiEQJ82Xe5SydV9VersuhfgyWAXHvfQbjjq2RzEbu2Zcs4yar3xvlQFFztZJ7+4KAOyuVL1IM26FcZFAxaFTyAJ4sQ09PEsWMMKPnBxIgwjzh0KH9xYrsZ2pCFbycS77ujjvvZG+8r8zG76DGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770892172; c=relaxed/simple;
	bh=grtOFX/dL6G5MS05nZqVvq5cypMK28NE3KWtmcoV9kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P/Ohfcp0eaHFyDIdD2il6x1j9E/rDuXyJ8jM4/i5HbqLaHjEbYRSBMwG3Aiiy/pKUtrr0zjIuQMlSRi0XwpriRNp5RiFumnBJJIzLCBd4ESioRdvvpWaNoI7Vvh5eImhkh3cGYMZv+VvdkmqJFkC/4p/p14Z6TTzxkl8QxGuOUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g0b6HYje; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZIuaO9mN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C9o5Aa3562061
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:29:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VtWD5KPpr3uE+vRZBfsKTfgXmw9x/t9BQ2vLWIDrTUw=; b=g0b6HYje65DID16Q
	dVH4/r690p/9783TMw+GF82GQzDUXGHpzHDZwkfSyxnDRGP2L8WTzdPDjwBwvRYU
	35ODAe05LnKu//gNG0butsovZcEEgxCOCYBi07yJe8rgkk7y2Ip7g+ltidJ8t4++
	qZ4pyesibQa92pSKFnz9wBD92jPc72ugWWZpWpdaMFwC8EpnaqYZDhgMZcWx6yqG
	3/uFLZE22/RK8itYHjQvlJPBf0tIL4xYmbjzZx+0gDbAlmOdlQNcCkTarXJzk37T
	eg0L0WSPyRQM8be15he4i0swAnVZqWGioMsc5wnpzj7a4jQv8M/rlampr08lTU1l
	8jZ7mw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9ck2g4bj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:29:30 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb10b964e6so148790285a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:29:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770892169; x=1771496969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VtWD5KPpr3uE+vRZBfsKTfgXmw9x/t9BQ2vLWIDrTUw=;
        b=ZIuaO9mNoUIzhl47qU0c4opeHyGLf/saZu5Bl4jalzhQgqgmFWX978sTJxCoQHpIxp
         bewbMNbVaakI2vLUSL/bJo3Lr/qDf/7LPoENBph16CVzJs7C5PmKPr3I1Ws9vH07kruz
         CXEMHh4TIwYf4MMu0doNfx801TkcU5cIxWXb+G4LpglhqewBdw6RRm+CXRPXouJ7Dxux
         KIAEjMxMMx0xxwhhdXvgSAvSNGIeNoHf7LvSxhn4vcdpVoEIR/eE6A90wZlZMGEV/gIW
         xwFV2JzbDu9cuZm1svZMVcx/jWBMgCJpV1wDDKPEsZ4dTSR9hx/wWs+gvQ5L3AZ3Tq64
         lDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892169; x=1771496969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VtWD5KPpr3uE+vRZBfsKTfgXmw9x/t9BQ2vLWIDrTUw=;
        b=lyvSPlkS/u5j8xIGgowGrVwQN9zHp9K8vQJ6N2SPkykdKIokwbf7sXBp8ja1FMp0/6
         J+LAJVPheckEiehj4GYXpZUTrV1io5XGrXF2mqxO6xEzlqfBThOBgbLvGKtas99IyC9W
         l2qbza5wuhLlWAqeQwCTQknsGAVEGVNQ8e+gSzLR6NjYxkCU6tdt4qbdQ4gbWshsL0FB
         hk2R4BNVvyQwc90OyTWpo6cs6i71h5Sv7ULHev6qoCfOfZJQxtmDpBj9A9Tett4pmyA6
         v7YNUGsbriroRYYdLBz2wMPuz0a2VE9rZw7kaEZ66wpqBZ9e9bBAZNkacSIYUU8Djfi9
         i9eQ==
X-Forwarded-Encrypted: i=1; AJvYcCU57d8Ns1SbUQyOOVqeScmkxLlhrB2WwLkYi77ZK1QIgL3rrfCOtWZkXddbBVkTqitbwD3URR2IPr5Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxKKJ80WbTs8W8YzyZQJJLamZ5169LbFiB4ACkka4lMiwtYdLQ4
	vHcTVs3yYwc5M8Y88xI0qL4Xl84Z8i5yPiZuG5A/MKHxjh1B2/OjJ1C+54w0i+vYTxN9uXGdbts
	yLMMckEGYVmB03KPXUrDvr4aUDirFImS/0TjrWgLl7VBMxCsGQ2GzRF5DEZBXSi0d
X-Gm-Gg: AZuq6aI234su2uxwGaC3hGELDNBeS/FSV1b8GWKl7rBQ7QHnwr143sYC63oIBhH9NNm
	C8keXnjP1Ehfca8xfM/al2K3lJvnjJcZS7CS6fENSMQcIIxaoeslVBgJAdrrebuSc6Z3m4i59Y0
	flfi4+1EPu6oZRkPO0TcJk2j8hitsLxqGNtbjBQvIs0B8lb5tImeOWW1Uq2QfpJLuMwlnIflCbr
	hTA8SAt9cAbs+muK3X1PoFjJb7PFkLE67zUCc13JmSIBznYjSl4CSnvxO/hopIZPlJNcvGo3YtX
	nf3QuyEZy0A025NjLeY1xnbNlxCfaE21Edll9vK+kxF9QaRLuO4kl/ISovHsQ2TUf9T43fgj3fE
	BY9Zr5T3C5Ne53ZxfBmynWAFqewfWymQ5oLeqRyhRcqtjL5vD+5oH3UJch8zmv5eVoALsIP8AvT
	pHWhk=
X-Received: by 2002:a05:620a:2545:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb33166e10mr211209885a.8.1770892169307;
        Thu, 12 Feb 2026 02:29:29 -0800 (PST)
X-Received: by 2002:a05:620a:2545:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb33166e10mr211207585a.8.1770892168824;
        Thu, 12 Feb 2026 02:29:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fa0cf9093sm5583266b.29.2026.02.12.02.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 02:29:28 -0800 (PST)
Message-ID: <d5e76996-e68b-40f5-a2a3-9dd030968717@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:29:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: add support for pixel 3a xl with
 the tianma panel
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        yifei@zhan.science
References: <20260210023300.15785-1-mailingradian@gmail.com>
 <20260210023300.15785-7-mailingradian@gmail.com>
 <037d0771-a802-4ca4-86be-5b032635395a@oss.qualcomm.com>
 <aYzZf-9rqqBikpNA@rdacayan>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aYzZf-9rqqBikpNA@rdacayan>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=cd7fb3DM c=1 sm=1 tr=0 ts=698dab8a cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=nkUbddICNmq_qF48:21 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=Gbw9aFdXAAAA:8 a=0Wqi5sXYzvoKQ2Wxs_MA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3NyBTYWx0ZWRfX8FF/wLqiKdYa
 Bik+xZYjKJeiNWhKjY3+G9wWzz7kOlhJl2C0bDwi3HHgInWqR+BIVTrn+e1WaryYHe7Oor/INnF
 6s/W5bpWJ1qvSi9D/tId4zqKl4lryKl6dXwzUlyVePO0mrc3JnmwzoIvKChk6Lc+Riubc35cxYU
 5krmYpXMICzlk2IQMQtnWd4GozYdTdlNd9pgXeHjVaRX8msYbdQmALwxdcnq7P86MYr+5WJht0m
 r4lsSzqqb2BlqIPMg7G61LJX81ic6GDshdki2YZOH/cjFsCwunHb7EVatLpxn/077CuB8EnPr5M
 HzlZzNcp29TNQyxfLWavskxV8zuPfgtiz9YQXE6YmZwmJwgCAA/bPBcuSHOq89/bkAUKYbaYLba
 PS7+FDcNWRGnTzC5Ox1kh4XQo1bhPi6zriB4m1n3Ghql7GR+E6+UVGwmuQsRULlZI+ITlFmzfQk
 lZrE/rmSkFbBVJyPB1g==
X-Proofpoint-GUID: sDC1RfFI6fDYW2XcQdAYnejwYO79X79W
X-Proofpoint-ORIG-GUID: sDC1RfFI6fDYW2XcQdAYnejwYO79X79W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265008-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org,zhan.science];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,postmarketos.org:url,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1897F12C83A
X-Rspamd-Action: no action

On 2/11/26 8:33 PM, Richard Acayan wrote:
> On Tue, Feb 10, 2026 at 10:10:46AM +0100, Konrad Dybcio wrote:
>> On 2/10/26 3:33 AM, Richard Acayan wrote:
>>> Some Pixel 3a XL devices have a Tianma panel. Add the separate device
>>> tree for this to support these other devices.
>>
>> There's not a device upstream for any kind of Pixel 3a XL - should
>> we anticipate a non-Tianma-panel one too (i.e. are you sure those
>> are out in the wild)?
> 
> Yes, some postmarketOS community members self-declared as owning the
> variant with the SDC (Samsung) panel[1].
> 
> [1] https://wiki.postmarketos.org/index.php?title=Google_Pixel_3a_XL_(google-bonito)&oldid=89946#Users_owning_this_device
> 

Ok, please mention in the commit message that the panel is dual-sourced
and the other variant has a samsung display then

Konrad

