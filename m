Return-Path: <devicetree+bounces-269207-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Qtg6Ef2GoWlYuAQAu9opvQ
	(envelope-from <devicetree+bounces-269207-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:58:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD2B1B6DC1
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:58:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4144D3030EDF
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80ADD3A1E6C;
	Fri, 27 Feb 2026 11:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IWlMliEM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WtXqbUEd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45508329E7D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772193529; cv=none; b=SeBrRs3Pk4/W94GxJTEi1+qbQRgLPW68KdhxzLD547Wq5FH2jMtwVHu4ACTjnrZy8KcZ8FycB+dhzarBlUpL/XBSUumzjvtl5nxxpmj0RXTwpEndBg8Ia5JaOq2I5hIycUQLxrG8Np/DgJWnPedUO0DdbZ17opTuD3sBe7arJ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772193529; c=relaxed/simple;
	bh=dv2NqVihq9/4pt17V0L7coUoZhM/pLyc++Jrv5RG44E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YD6eiQYZkECQjuF0v3+t/Q487X2+3ONtpWprA5SL90gh9opbnBw2Ez8mPOqUsLx1X901thYOF3xgYL0mEwico3dcrUoqSeTDqCqCjFg48q7cEh7YU35/QeYFaeK4XUQQUYq8g3++59tVZrvAS7cg0jfKjpEdz17tfmRB8mpbRMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IWlMliEM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WtXqbUEd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RB5dqN3485986
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:58:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dv2NqVihq9/4pt17V0L7coUoZhM/pLyc++Jrv5RG44E=; b=IWlMliEMnR7Gj8tQ
	uY/cAVH0TsDCUczm2Zyf1APjrwWSJCBSWr0OlNpeL2GbGz06DTDVzQIIa3K/i7g2
	nlo+Yd2KUUr4f2OJac/Ae34G3FZhyXv6+CBjdjzTmm9FkFXrhmvmdC/YbuHgKAEE
	WdMEfWVRIvUpFJQIBJWkaX8bU+DLAuqsWcRdV8kfioMyeP6NbowieliD0Rnlf9et
	pADGmpen20NcPOSQcaeN4PamxQJ7g3TZYxNrGBgI2J+1YiHgLK72ape76Nzf/kgr
	gxWuX5d4b7C9I9coIkecEujogd8i/lBj00Vu8OFwHGYHZgElzuSn96hUB9dGht+2
	MManFg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cka2xg497-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:58:47 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-826c67a7aadso876233b3a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772193526; x=1772798326; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dv2NqVihq9/4pt17V0L7coUoZhM/pLyc++Jrv5RG44E=;
        b=WtXqbUEdKVB0ZCE+TQZjRD3y7yq5bFr2qypUrFeHh22eQKGQXVEL8PggUOIMl7EGJU
         uhhBUa0J57hkkUgejlww6VtXZdzVKPIJHu/7vTNGkb3JuYvftGtW+ISZ5+5WwGKuA7SG
         229tkfugz9bOKZ4wPd/Kx47QmGUQM1EfBmsTy64drMiGpSEyo2iV+0JkwHItrnxi7Ze2
         eX7vc59m7Y6scq2sjET3GCTyrJXXGkuGcWNmFCGKae+tqpZxb0Fy3ju7JtFJVjiHMt2s
         H4Sj3mkeIrVRMkboyPF/J+8rtdNe4EFgN3p03Ytxeqtf5Tr1pm3Spxd0x0Csw89Z0+5X
         Yb8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772193526; x=1772798326;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dv2NqVihq9/4pt17V0L7coUoZhM/pLyc++Jrv5RG44E=;
        b=IiFKqYbXqzsYxjUGMNCXukEkmQUq2l6fT/NtmDc/HcM64MtIUkzUG+bY/TnZ8UhwXC
         OT05tX26OAsrJQhLknyjgdzi6du9WNHjkq6vzDdS7IKs0nkUa0hozWRCNkebkDy1GiZX
         cmJfS73kRjugl4Lm/bB40VBFPt1gQGNZJRXmy+jUXkblNvK81DN90AXiLGTD3TzEKIU6
         A4YQ9kxWYVslO5dp5jbhg9tHVxJC7HiVnoaGBBMUtJ/m5OibVLDsdgfwEhduCGyAQnm0
         iC8XD5J5CfcqASbOswUDKx75AG33+ELlmq+SmJzmcBIK57S3yLjeUHej40BjHG2dvFom
         Y4Og==
X-Forwarded-Encrypted: i=1; AJvYcCVmewNj7Bpg6C55e05Sb2JwVepu7dN93smLZiEwdYSFtF+WscL9ZHkitkDs8uOJqFsb6udiSc5kG5rU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj8RIFooVCwQKsrZKfuQtErVRzstOHUSSZmehMq1493Raou0Gs
	9ihSZN0ITk+PEY5myH8eOce0Ztcxrm1dJVuCaUPngxlN9wTf9MKg4fi75ASoQ26Few4GUawbpxa
	FLpMFoHF8+BjPTUl1OixrKig7+G+OMQeKOtRm2DmPNDe4W24pAkwq5wuZeyc2lMbI
X-Gm-Gg: ATEYQzxILMfFIGscIh+ot+y6NoSrIm/WEc8hLRbLJEA6pQ0n5kLvBBdb+vC0glhiPdN
	yDRORswjvg0f2HC+G3YwGYKjoNG8/FpzFHXBR6ZolJlZ7dCZKEHqhmihqH/oKzOzLoJ+6+XU6pH
	HrUMHwcU6R4E7yr91zM1uvyFEZzmfPpX2Pn8VwcREDxm/0bboM+uclS6d9en4c4PydQ/rwT5eOo
	m551MFjb2Kb2bCvesQ4siBoMc3z9uFzt9aKRs5F0OVStYiCOn2vs7EuwFMLrw8XL3PUlQ1yrYbB
	nfkuGaECvjzBnOsJIY1S6+ABQ5D1xcxBp7Gl186T9+TSlZhSXceo2rojrJhSsi7IiPijEvHJ6Rj
	qOC0ojr5ji7vkxEBbgVWUNn3SLJ3S3RxxJOXicJdS1NWr
X-Received: by 2002:a05:6a00:2d85:b0:81e:baa3:1fd6 with SMTP id d2e1a72fcca58-8274da3a595mr1608545b3a.4.1772193526192;
        Fri, 27 Feb 2026 03:58:46 -0800 (PST)
X-Received: by 2002:a05:6a00:2d85:b0:81e:baa3:1fd6 with SMTP id d2e1a72fcca58-8274da3a595mr1608527b3a.4.1772193525720;
        Fri, 27 Feb 2026 03:58:45 -0800 (PST)
Received: from [10.231.195.100] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a081a14sm4593796b3a.64.2026.02.27.03.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 03:58:45 -0800 (PST)
Message-ID: <8c18682d-18f4-4fc8-a3bb-5abb6303ff66@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 19:58:41 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: glymur-crd: Enable bluetooth
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260226-bt_glymur-v1-1-838fcbfaa767@oss.qualcomm.com>
 <65d15750-64f4-4abf-a62c-519510ab3968@kernel.org>
 <a2b64ff0-38d6-4153-899a-b1e5a620eac2@oss.qualcomm.com>
 <a72b1f27-1bea-4930-a8f5-b0ae22675920@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun.hu@oss.qualcomm.com>
In-Reply-To: <a72b1f27-1bea-4930-a8f5-b0ae22675920@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BOC+bVQG c=1 sm=1 tr=0 ts=69a186f7 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=yWs33O5C3Npa-eM8Fg4A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: KYVFy4p4Borv12v1qLBOx2QyIQI1uRVv
X-Proofpoint-ORIG-GUID: KYVFy4p4Borv12v1qLBOx2QyIQI1uRVv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEwNSBTYWx0ZWRfXw4DQ+ceytnOW
 VIcGeNYORJT9cYnpBP878S/cSyxc3L36hepfJjKCo3s9IFN7GOUPi7JVaRxIJKfI7//Des+pKnO
 HzkYEzPKFrOuD/zYj2DikLNShrmSyPo3kmdROR1t6VgtCdVX1HbvgOzH8Q1PkJ/hK8Yq/xnuOit
 qj65vcjnqbq0T88tvRhXLpD2i32UOVF2VOgUhjcYiRQ2omMSVZ9557BJ7n3W9y8tvQ7eCl1OvpV
 /RfGrPSxUX7Xx0v600IK2zaHzMGtpYoqakQPOIm6aBz+pijP8y+NiW9RqqhxXohBZxlmoxFeAYu
 NKkdIzo07gyXZrmKGbG5WqKOtLTpmHKeIZfl9+K1fAIsPE+9eJfcwpUMnYy2Sz6q06QHpcrErhX
 pEuFpz3dTuro0zJJIzYe+gwhETAx6cS1yRO2BGD9Dzdr3qu1OMJ1Yzry7UuRx8brSvrYDGWtWuz
 hQaeMWoqsUM8tzYu9DA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_01,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 spamscore=0 suspectscore=0 phishscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270105
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FREEMAIL_CC(0.00)[icloud.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269207-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zijun.hu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DDD2B1B6DC1
X-Rspamd-Action: no action

On 2/27/2026 7:43 PM, Krzysztof Kozlowski wrote:
>> yes.
>> the git repo is a private one, so nobody will notice and code review it if this change is not posted to https://lore.kernel.org.
> No, it is not true. The repo is public.
>

The 'private' i mean is that the repo is not mentioned in kernel tree.
so it is not known by public.
> I am asking why are you duplicating the work, why you are asked even to
> work on something which was already finished/prepared?

actually, both i and many colleagues does not notice the change obviously.
so cause duplicated effort.

