Return-Path: <devicetree+bounces-277111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHOGEWF/ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:33:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE92B9F12
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:33:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 352B1300CCB6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:32:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795A135DA7A;
	Wed, 18 Mar 2026 10:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IH10axvH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aziNxNNS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57359188596
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773829967; cv=none; b=HyDQmqMCIy9ozeij1RbK3aBw5UWuOfunTZPg3/L7mEyrm6o6AQFt3Hv3C1tRVFuhkopN5JqVQUJKmAufTMrvfMTD3/uQ9M23UdnLqmp5LJIP5erh3o6efRwHKpHxj4BP27SZBnaKUE8e9kMLj8S7Gcs54VlA8LnBjwdNElPxDoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773829967; c=relaxed/simple;
	bh=okJA4/r2gaoYw0ua1vM28wt9Waeo3cqzGJKL6uO/3H8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qOX99wrKstpOxHdry41b2X+WCdsqU2dI/wGNuMmDdHaVt8wv+2n4i2OGU0VoG66/+OFW5T7CK5BcF3DVmeMIRkpTYHjw7gSVFHe/cXXcIWdrTofVRUEbPiMJQwzAcnD9XMyAsHQUPADpnTWJSlsWOtp13h2kCUAm2SxHNxpjQzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IH10axvH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aziNxNNS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I6ZOvU2878239
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:32:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bzdMmpvsAIDS69rtM/Jnx1k+GVl/CMYeNLOiAyJ+tQ0=; b=IH10axvHmTzUaSmy
	dW9JcmNBz/0KEF0nuyDz0CuUzLHAa7qX5Uof1O9v92D0cjqwvHthaWuHA74EH3S4
	IYeXyNiiAMZEN871whbNdWqym44KsJFceV1SD56b4C22sPJvEI2IrVR49w0ac9Pk
	4IU0IQjL1KUT+OKvuPp39IXC5hUxlwuOiJP6j+eIq7+02SXpls4hmdLab21JSz5L
	LqRhArWwkESLXg8AA+10ypJbzCMWqO5ZxzUNMOVpCJz6YxWF/DJBpA56ChJk+/e5
	YWyhPRV3dKQeTYNw0jQ0W70pSsskI17iWBrWWka8SJWk4xAHW/hjlQ1s+DRpsCo/
	rITurA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr11xs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:32:45 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c741f038f7cso493226a12.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773829965; x=1774434765; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bzdMmpvsAIDS69rtM/Jnx1k+GVl/CMYeNLOiAyJ+tQ0=;
        b=aziNxNNSDndEdb2qj9wtU/AADXmbNJWmKkFrDFzpodGADxd8IPs9DuEY6wDV6Lmhu9
         UmyuY4mfRrSde0SnUFMHzCVYKJm5HbQ1GzEQeFvTu1HHeA43opqgK9c1QZHaMxq9iKWf
         WK4nFi47bl5sLFSI4yOrGkDHUf3WE2rMD0H0GOAQH/nDrAb70LsRPpxyjlle+dXe0Pey
         1Nmsx3ZG05xBpjTHL670evQ9uhGKBmg5VSiHvZmqbyCfTtu5w3oGHLVq3Emky8IShogi
         a03527tb4J7Jn7xK4eCWdFpz62wwEqrDnEgzWfLFCDBaevLdCYLe/FLdwF4qJZXiC34J
         BPCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773829965; x=1774434765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bzdMmpvsAIDS69rtM/Jnx1k+GVl/CMYeNLOiAyJ+tQ0=;
        b=eG5ShFEEf7BLNpF8wfG/5ueeVo0pmtVuXl/SBwrM69Ksw4HTaRzF4LHaM1Dc6hFqe0
         1nu/fcozs92I0PYDOBKH1R2d9KuNo1EO+68Ks3CSNN78T3j2/qDSAczwnGFIrGZdZKcE
         aUGK8qDf46Bai2lVD0foMqgGsyXbBanFamOk7Lnom05Si3EqlaL2lMdvoEi+pXoFckrN
         OX21phssFbS4X65VPQdCPKFzK1w3gKGcb3so5j80QLnL7EIk4CwmLWAbYqTKz2065Oyq
         booF3SZD6iWnDPnB8C1qstYSerTczfw33g//jgm/8CKtYtsbboL7IDq2VFwpBG1QlAT4
         QkUw==
X-Forwarded-Encrypted: i=1; AJvYcCVWJPFfnW6SW9DiEy8Mq0GcEpOZpFxzvP1by08UEV40Lbl6Cim+BqzGMcize6eRewSIpWZENGqD1/92@vger.kernel.org
X-Gm-Message-State: AOJu0YzRfWJIjnPPLGb4W9J5AmGe28wUD/oMcP3RzX7yjjWLk2Kqn/F2
	k1dfvlYIePvV5hAhVp4v420TWzH7+9xQ6OwC9Sh0ZAlo3Y5wol0SDtU7swbFAh4Y/atgnrhiY/p
	HkJW/bzVw1Dq/RiWRpoaFdWa0ij0IiEhFkYxQtjNpFuWoie1/PMxd/5T4RkF5w5FL
X-Gm-Gg: ATEYQzy+XBguTU2qklWFjPVRXs7FLSTaoWRMdy9ubYqyb5uT6kUfNndi2MvFy1UEmBC
	lRuB3SYR61tbsSGbJoWRAvu10R0pENUzcDI7Xv3uOH+tXL029Z22nss6LMtCzYDq09crfi7PIZJ
	lIkYokaiHIRfjlERYWTJpF38BEXozNFhnG65YUoojl8LXG+WDId6N8V3AAdbqPJXOI4PLrKXiPr
	cWroWAfow02qFfZcK8hTgDbkF5ZzUXKWKuVBIHBCjWvpwZCuO8MN4ERCGMkjUHcJvCtJSL30A0m
	fkMmL4tzV9OFqAVGAj/sIUl33btZeCW/eseKeHmQ8ER8bZtLRMnddGwpotlpgqp6gfmqFOUdxnl
	bQvdOBNKthwHW4gblwNQPgcHsYtaHXJE6IT38Jv13gbSC3g/QfiI=
X-Received: by 2002:a05:6a00:8007:b0:829:8a84:b9fc with SMTP id d2e1a72fcca58-82a6ac11ccbmr2422000b3a.8.1773829965003;
        Wed, 18 Mar 2026 03:32:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:8007:b0:829:8a84:b9fc with SMTP id d2e1a72fcca58-82a6ac11ccbmr2421972b3a.8.1773829964545;
        Wed, 18 Mar 2026 03:32:44 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82a6b56de13sm2877864b3a.20.2026.03.18.03.32.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 03:32:44 -0700 (PDT)
Message-ID: <2b144a3b-4edb-4ee6-9ed8-625b75686955@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 16:02:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/12] dt-bindings: crypto: qcom,ice: Require
 power-domain and iface clk
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>,
        Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
 <20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com>
 <7dqo6qbpwgltnf7xfgiogfdpb6f34fpwsxuksdpphjqjljzsr6@hwqv7wjarob5>
 <ce0213a0-ee09-4c09-a974-ea490326607f@kernel.org>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <ce0213a0-ee09-4c09-a974-ea490326607f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba7f4d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=Rh5YJenaxsb_U_NeXlQA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: 9mQbXg3RGgsK5UKvmFivhikneOarPuGA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX1KfDFF0kyNPy
 ALKV+PRcsOCQme2lqtbreLLPLM1HqP//6pDjJK/3hRpoDItvzw4ePRIo5Y+5hpZduWwD3WqywYW
 FVGLpcrBs2Smiv2ZvdFd9YPWGi8yojHj7Q44bLh6ixBoERpQtZIEL1HVuGZRoOvWUzfYe/nAVbE
 ONDczsVyqyxXDNYAsOZHBkRbYhLhCP2zG/1yab3RgLF9Ym0P3rjbh2kJTadkqTgJ82KtZnfPmjf
 wpeH2Qzpr3sFbUxQxPth3146B249SHQKIS7rRdsk6Wuf+z3+PnVF/TFVbJgpBobFN5tLZR6UGHq
 K/RF/51OUFAnun56EfKITF/4tttjH2jGWgBVMJqNXiz4TuBOPrKokGxJzhbKcZcICHhDJooD0Eg
 pfv4+Xi3mg7AmSpOQcUbjkSTWBRne96QnCpEezwXNrWgo3lNChBl+zfunkcCXaJpRzjJ2TrKroL
 jA4s07r+T/zyHsSxEIQ==
X-Proofpoint-GUID: 9mQbXg3RGgsK5UKvmFivhikneOarPuGA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me,redhat.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-277111-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BEAE92B9F12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/18/2026 12:57 PM, Krzysztof Kozlowski wrote:
> On 17/03/2026 16:13, Dmitry Baryshkov wrote:
>> On Tue, Mar 17, 2026 at 02:50:41PM +0530, Harshal Dev wrote:
>>> Update the DT bindings for inline-crypto engine to require the power-domain
>>> and iface clock for Eliza and Milos.
>>
>> Again, this mostly duplicates the subject (and your last paragraph).
>> Either drop it or move it there.
>>
>>>
>>> If the 'clk_ignore_unused' flag is not passed on the kernel command line,
>>> the unused 'iface' clock could be disabled by the kernel before ICE can
>>> probe. This leads to unclocked ICE hardware register accces being observed
>>> during ICE driver probe. On the other hand, If the 'pd_ignore_unused' flag
>>> is not passed on the kernel command line, the unused UFS_PHY_GDSC power
>>> domain could be disabled by the kernel before ICE probes. This results in
>>> a 'stuck' clock issue being observed when ICE attempts to enable the
>>> 'core' clock.
>>
>> What's the difference from the previous patch?
> 
> 
> I asked to POST A PATCH targeting current RC. One patch. Current RC, not
> next.

Ack, I will merge the changes in this patch into the previous patch to ensure we
have one consolidated fix for the current RC.

Regards,
Harshal

> 
> 
> Best regards,
> Krzysztof


