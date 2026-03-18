Return-Path: <devicetree+bounces-277180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBu8Cg2WumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:09:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C34762BB408
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACD733014131
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8279D3A1E67;
	Wed, 18 Mar 2026 12:09:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N81CMaN1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XNufPPMi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59890364EB7
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773835786; cv=none; b=aV6Ht2nVwIWWCK1fX4vpEZgufBp2cXdAempKx6vSF60JfBhAk+YZYwBegtMqSMNk/03O6ZDwLFkRPQ9fVSmtAGHcNYvsjnJFM3JxajCHih4Z4TO++FP5WeHfA4XUuAESkqS617xCG3xOj4zKTl1Nn+oDiSzXtL2Se3LGNsNCUjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773835786; c=relaxed/simple;
	bh=MasSu6LrX5lPgNjrXNQ4hDcLWXBWHEq2tH9/laGLU2k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H/+B7v3irb5vFU4dKC0SdEanMWsneEnk/cAiyM64gkQEXhbfXSzieYwF1CpwcOTwuCIWleXtiwzoWrfy+GafjcLPN3CaWywJSnp4gPLMd0YbgCsDW/Z4JwYpRE6suG5bnER/4jxfYyrVN1W7Al5DXauupljbUBIqJIctwbW/EcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N81CMaN1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XNufPPMi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IC8nkL1459033
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:09:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2PHXU7+o+q6TQfOmo9FWcPNUGxEdG3zDnyw8T7/zKsc=; b=N81CMaN1MU+ZxPW5
	C8Xe6kBgG+huzIe9651hcdfMEN6KBbk9eTZaHIL4iglggKQA7mA2EaggnQTgMD8Y
	TPlfvFceRpBcKh9V/dO8Fdix7OIv1MLtwlxjBBNFLF2/qFE69WQguPYLQXbq0IiK
	FUuWasjVu6dJMnVXPwi1Xss6mCbeHC/ltO60RRkvpbcULK+2dKVjMSZS9j0u6UUH
	EPrDzl/GMBd/96L53+8KeXKi04JUmhSxhNsr9AywCpnz45rIljusJ8hCSkwFwp8Q
	50Q+NSc8UpaDItT/P0ABcFhck7VlTekw/kbGeKs3tkplYPKlw/1lUhD7xOMtwhWk
	4i9Wbg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut1804t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:09:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091c7384edso46700131cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773835784; x=1774440584; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2PHXU7+o+q6TQfOmo9FWcPNUGxEdG3zDnyw8T7/zKsc=;
        b=XNufPPMi9EDOjpXfKcMUliELbRM5b3ydYVXO5cBOH9efhUsaaMKLtKl4fruEMvCFrg
         SODOMUKSP2V8Jv9xTDWEhFF/VyNGUpW7iQjmlge4wCptGvMoI6A0FFjDNRUq5gGq23Ms
         Ifbra/YNKQrh4kevSlWolJsWWFcGbkYFoMAa4s9MTgZ2QGdfMWJl07ap1ei8HEdEV8WE
         I6iUXqrvdIcGU6ai75rCm9HAR7WnqsleFh1z7UFijJ/q+UKk1tdQvLgi3KgXFErPiop+
         V1yahOhRSogYm1dVMLft8xYEDBw5aT1XWcUZuC9qeXzo6sEkYDzGLBOCC+VYZBgq5RNH
         jWXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773835784; x=1774440584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2PHXU7+o+q6TQfOmo9FWcPNUGxEdG3zDnyw8T7/zKsc=;
        b=noLDyNQJFKnX9y8xM0bF32L1hQcb6J2jIpKdPXqmD3F/BBKSX2/DLm3hD59ZcIYSyZ
         tbvL/EKD/D4Ek7Skz0Mfij/Ip2vEUh9VPAiIjqcp9zlytljwL/q6xgAAuSbtLfvTxB1C
         zuTKpTTArvPr+quhkFZunlp9XSLmAJzyQBmNx01WhbgC6rmt+S/cE+p/YvaAp1gLGc2f
         9fKOhcQVDzIxLA/jz0JcJ00gYbtbq46n47CALbPFvdrY/+E6NSz53eh4yUrk4cOQMAG0
         oHlYqbG+bqrjJy/qOwM1G6f8fzJKYWFc8WcBAi/5nE3OHtnzPsFT7Ha5dOVS5EhwyeCd
         tF5w==
X-Forwarded-Encrypted: i=1; AJvYcCUKJsJuvQY5rytVAt16OAUxoxIuHRi1iDC3LmvmSy5M/WytnrPJraTgHjVbFWLYwNiky/O9uE+eNHQ2@vger.kernel.org
X-Gm-Message-State: AOJu0YyKaAmKE2OTKHnfZP+aSYSqxTYX6dsNnbsy0cOLCYyiUKHF/gic
	Glaig8YYMB2Fs0YvAFdDtej+UP/6G32BDeB5cy2Fze1o5wP7arxod3tefADF66lAYRCIUNo49C+
	ItRzG6kEGwkbczYQxOly+zbeujf0NuQHckFTCjbGbLw1HLKFEohG8yT7YiZ0Udgw7
X-Gm-Gg: ATEYQzxpC/1WPhSNlwsuvPCq44lobv0hlDnW4TMQJnK1las8zXqM2O3+4wZ8mvbxhzr
	e9dx2vF9yf0Uubg/UMtU3ad2mqAlMOz/3MEWzrq9YqLOgvLrnp7RDjTXnwLll1rmnG5IDIINCnJ
	SUsoMzTOMBDbLlHO0MH+YnVvAsIjWuCt1Yg1nLkfHGyi9iVUJ+FJSlDci7JVNT7SHoFz8rIak+9
	GusyZx0OcYlnv7pSU63HMceLsFuUF+0NIFxWOmQpgyzpXbqMLprB/Ud+Ocp4CUEGjV/7eSn8INM
	KArUkjO8gg4z4sqndoh1kbK3rtoXzXFWYqnPxHGOdFLK0n3TlEmiTT+6x35Vu/Cdp32F6fUboW8
	yor0o8qAFskddLmBbp9E/VslA+Oe1fEzfVsuynyfLAhpcaqsLWinnmFfEEZstiTDGtvqmVr8SzO
	9+8+4=
X-Received: by 2002:a05:622a:34c:b0:509:9d9:e19c with SMTP id d75a77b69052e-50b147690e5mr27514421cf.1.1773835783602;
        Wed, 18 Mar 2026 05:09:43 -0700 (PDT)
X-Received: by 2002:a05:622a:34c:b0:509:9d9:e19c with SMTP id d75a77b69052e-50b147690e5mr27513831cf.1.1773835782975;
        Wed, 18 Mar 2026 05:09:42 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16ddd39sm190290366b.43.2026.03.18.05.09.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 05:09:42 -0700 (PDT)
Message-ID: <74c7e115-2a64-48ab-9fc6-14efcd46717f@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 13:09:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Sort pinctrl
 nodes by pins
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
 <20260313-fp5-s5kjn1-v1-1-fa4f1c727318@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313-fp5-s5kjn1-v1-1-fa4f1c727318@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cjEICBPX2Tn-TJBExkkYK0zxCYB4THzm
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69ba9608 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=x2qkw7L4rmU9F7zQ9u4A:9 a=QEXdDO2ut3YA:10
 a=AYr37p2UDEkA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: cjEICBPX2Tn-TJBExkkYK0zxCYB4THzm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEwMiBTYWx0ZWRfX5a1XLKWW+/1u
 b7v0ygVSzaK9ztY5q1BZfzWb0HzHw7uqM32e4KVxO9BcUvZIjCJJjnGVkSxWJ3rMD8ZmpGhdu6C
 KGTlP4nqFJx0c6deYpua8VIujKE6JUDbMkX52qZHvsKY+Hig6NZZbJ31O/DCdzFYuV90eY+mf53
 Q/GC0vhT9sk1RU73JKrz0ApEGFH/SJWlrTTI0QCnHafCnt6QBZfPTxSMO/pnNnKSdouQRP853Z0
 cLJmFaThESyTUTuzOnQe/YGg5gpDc5UyJ+zgnYGStNplsysFqIM+hx2zvVg229uP6r+JG/Co8LN
 i85tGmflqdPjnpzCDyfR4SlMvong4AQ/0lnfiycSm2yUgrjEw1OvUDhT/BYE9jBhUHj/dXh3fFl
 MCUsQNHOZxpdLoRmWdQsHmcXTXhTfHUnZ6uefDxFLuIri6YjYftLMnezBO+Fvn1z16WEaoZSH2G
 W983/yswIBWDV1nv5Cw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180102
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277180-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C34762BB408
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 5:00 PM, Luca Weiss wrote:
> As per DTS Coding Style, sort pinctrl subnodes by the "pins" property,
> in preparation to add more pinctrl states.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

