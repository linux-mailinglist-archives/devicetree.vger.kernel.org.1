Return-Path: <devicetree+bounces-266062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oNB2Isg/lGlhBQIAu9opvQ
	(envelope-from <devicetree+bounces-266062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:15:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFB914ABDA
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 324913004421
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3D5927FD40;
	Tue, 17 Feb 2026 10:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hnl/YYMG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BmzPSONd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 863F51A83F9
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771323331; cv=none; b=QJanJM7ABvjSOiootq+pVAyRo9/PxfPRCv3/HILLy0JbCXE6dEx99kS0Dny5Q8XiveTmBO7pSSUOJqqqN3WapYYkkCNK4TGDzIZv5JpHdAJ01fuMcCftXktb/hXCJXUmlzs7jiXW0IEHxqCspE4Av7ph/7JIDN5jMymZzP4Z4Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771323331; c=relaxed/simple;
	bh=u3TkWkPH6LWvLanuhDAXSqqIBVBVtYI33nSwq/2/5kE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OyoHj1wdgHzuZJLZxWI7eD4l7e7deb5Tkp1Pp+lQcGv2gfvHu4WrGFkL/7DTvyi26Bu4z1Ab938KL3pRFgNrgIO4tArz9yXsMCd0NANMZxw4foTI3dDgBPkgULtk89Ww6SFz2ge4RdFYZm1QquQ0JG4PMepNrImS73T+Q3O2DHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hnl/YYMG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BmzPSONd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GLsFOG006270
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:15:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	35pdAs0GELaEmLYh71wOirxIOtz+aG7dtGNqdZFfqPU=; b=hnl/YYMGkiFn6J1a
	EYZ0H1sGJzSmh4QUVQp3QiXc2muztkQPL4sf+KpxPZz/Ris0rcl0+oVD8nLP1Kg+
	hD5GTm0jlvFw/6vf53V559Xv56U7KNhVctW3bh7z/JbR0ilN/FEok2xafA1ZROZq
	wI0xlFa7SbRURTAh6tXkc7FEJFhkM4uz1BxDn/0IGgYbwBxfs5TMbrGVV6mpSZM5
	6NrDouJ8kzHwvhzL5ffAFKpVpBeKGvgqfCfGCWGQtNSokSnGS6HMnTkgOWrvIICK
	8Kw4otNVKsziifreMglJ16PZ6bYnLW3Hy46Qm23bZcITiPuMEYgZ5F1FFI4I05IK
	tWjYxw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc5kha47t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:15:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8960257db65so30033186d6.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 02:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771323329; x=1771928129; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=35pdAs0GELaEmLYh71wOirxIOtz+aG7dtGNqdZFfqPU=;
        b=BmzPSONdlKC0ZWYaE6AboA44A0g0w9x1eUQ6nZenNoDy8nsNvWpXUTtrBgfquvKM4E
         YRZHCfvL88bBQvSJbkTn8+RajNGlw6pIBDVJf+NlqKYTfhjvnuWBnkNQhwtssqZlmkY2
         wHQyjp5nwSf97Xza+HDjZ6Xr5K8g19ET8sYsuhCicJhtvmuEMiIln+VXSJfRLLkwdmwr
         4U44ulmdHYIpSbCV3uHVkaFXET8p97fK3WQ+KoLjh30jPmOJlL2W/O0hC2Fbd2DpASgr
         /DywfnMAm9xvE/mr6KA7c39g3boGYXutxNKZi+mOteBjLovYnVu77XM+xB4m3kqp2BaL
         aZzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771323329; x=1771928129;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=35pdAs0GELaEmLYh71wOirxIOtz+aG7dtGNqdZFfqPU=;
        b=ES1YtMjxcnc8MQ0nXfeEhz3qdmumzeayzOmUO9uiClOLCdwGY3M1jl5WlrdQhQxT5d
         4MchtNXJnSuRAmZ/t4oEv47iMwCfnRhEaeHwf8DFeGA8s4+TRkIoRS0JXuGNKzJmg8z3
         NATY2ngXM3Pr2oseGswkq/oNqDZCCsK82bgPf7ScRpZ9tfSdkiHNAuXmf4ntPMzYu2Uj
         HqlcWsKeI6V5/F40XpMxDugjfI8oVrRvGk0VcRXslJeO72pwknqpQqExplcoD/vn8HEW
         pF/ylTZrvsJlV16kc3IURmtufkUsK+0Kic6WagX9tQcjdhxMjuJNxhTC/bkhuKQ+bHqx
         6fFA==
X-Forwarded-Encrypted: i=1; AJvYcCU8FTsz8xJSj9xliY17mxhCaJiVh3B2y/5IZgLblAzXcTRAtTWBOEOHsojaU45oy9Cc5LjZdYk9918a@vger.kernel.org
X-Gm-Message-State: AOJu0YxhpJxvaN6ap65RaZT+K6ABADc219VXZgPiFWDqOdJjtoR31Jn/
	2iY29jmBihmEg6ZjBmtF3s41m+nV9ImyjnX1nqlpFIHEJj8E2Hq2Z+VZ8BdZmiqbyIk+SFiir5j
	KjLNomEJgTlGWkRlZEpjec1qSLZemHP1mN347ASRmcL63WiR+0wOKNldlD/2H/dxy
X-Gm-Gg: AZuq6aIDjAqWQKiDSWntuDA74A+D6ZXObRZ8wjua5NoFBSvR2ywgSnUB7FGZHjzxUTQ
	8NTzuRU2fDqs3w8Am4n1nKL3SyphOnP6mzXWMwlRCuntHvPzHf5JXbgdYB5mqBj9piNgtxUbPWb
	me5IleHbQonGOQn5p+scsqbQyiJzrYjs+CXq7SWEGG2ShbS6APL/FKl30avmeyypY/7plLKD8c3
	goyBZy7hodScOkkfEUf1nUnvz4h7iWKTQFT46eBli1vQFJzp8tPU0H6WNPaja3DXsPmScdKeBf0
	P/IKqiDwTBv5F8DAK1x6xKg7quvCGxqi8pyQVbObu8xPxt0w2pPUF+r3WyChIGKHqQ1+vqGqD4X
	nwReXHrZqSBB5eucvKoZASAew+qP+JcQudplFWp3SdpF2eAFmJgNA0mP5sc4oZUIAe1KquCANSw
	tqRRk=
X-Received: by 2002:a05:6214:8095:b0:896:f9ed:bea1 with SMTP id 6a1803df08f44-8994ac78794mr12228736d6.7.1771323328785;
        Tue, 17 Feb 2026 02:15:28 -0800 (PST)
X-Received: by 2002:a05:6214:8095:b0:896:f9ed:bea1 with SMTP id 6a1803df08f44-8994ac78794mr12228466d6.7.1771323328379;
        Tue, 17 Feb 2026 02:15:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7665563sm337195666b.47.2026.02.17.02.15.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 02:15:27 -0800 (PST)
Message-ID: <9933eb31-b77a-4ae8-b52f-c30999e99232@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 11:15:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] clk: qcom: Add support for Global clock controller
 on Eliza
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das
 <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
 <d6392cb9-9ab2-4743-a13f-7432ec03762c@oss.qualcomm.com>
 <iepxnbk7h6yti7biozcgw4uq6l6fmtaxrgxbt2tmcjxf5x2lep@expe5bgt3oin>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <iepxnbk7h6yti7biozcgw4uq6l6fmtaxrgxbt2tmcjxf5x2lep@expe5bgt3oin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Coyys34D c=1 sm=1 tr=0 ts=69943fc1 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=kkBeuq3EVEdDXXmyUhYA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: FuC4UzsA_-dTfsCrjHT_KouMj9qyhy3o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA4NCBTYWx0ZWRfX39Z+t93gyvp5
 vvsn76Gx25fNTMZ6m6CcMZxyHEJNmfWBSjBvf8P2RIFFEG6AGCXX2cnbJrevpy9v3WkH9VKlTxv
 FGo4twDfMdcZZ7iiX5X8OJJFUw/7d++g7FnsmBZVssK5Eq4DOJ3SK0AP6qHroJMkfHPDB3cs/Lr
 lnAnVW22jAPB3fumO6WxMHZgAn+Kl2qdovK8rjNLsAIe7sLwUmD3LI6xJ6dgu754+3mVRkJNzN0
 S7XXXhCQpptGwjUXDqC5q96rUAEb2BoeUJp6dVABzNUF9iStG7rmRrFlM+LwrBJ81g1m8S8SRtE
 g3yiq8hrr1Zp/zjsUYTnI5RYX3v5Dl9XsgULoPyL6hBXtCwFyKmiUioXKDKO78YG07dCVlgjoY9
 gOQ+E4j1+F7SxWx/ZRarIe043LbnFzX9GyP/y+VyL9wcurhrrmUipfluSw/brIKoECE2iCpRsdc
 yeNMTQrGQUq5yZ48flw==
X-Proofpoint-ORIG-GUID: FuC4UzsA_-dTfsCrjHT_KouMj9qyhy3o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170084
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266062-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ECFB914ABDA
X-Rspamd-Action: no action

On 2/17/26 8:58 AM, Abel Vesa wrote:
> On 26-02-16 16:38:15, Konrad Dybcio wrote:
>> On 2/16/26 2:43 PM, Abel Vesa wrote:
>>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>>
>>> Add support for Global clock controller for Eliza Qualcomm SoC.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>
>>> +static struct clk_regmap_mux gcc_pcie_0_pipe_clk_src = {
>>
>> This and a number of others should be struct clk_regmap_phy_mux instead,
>> cross-check with kaanapali and remember to drop the then-unused parentmaps
> 
> Oups, missed this in v4. Will fix in v5.
> 
>>
>> [...]
>>
>>> +	[GCC_CAMERA_HF_CLK_EN_SLP_STG] = { 0x26018, 1 },
>>> +	[GCC_CAMERA_SF_CLK_EN_SLP_STG] = { 0x26028, 1 },
>>> +	[GCC_CAMERA_HF_CLK_EN_SEL_SLP_STG] = { 0x26018, 2 },
>>> +	[GCC_CAMERA_SF_CLK_EN_SEL_SLP_STG] = { 0x26028, 2 },
>>
>> So SEL_SLP_STG=0x1 allows setting SLP_STG to =0x1 to assert the ARES,
>> otherwise if SEL_SLP_STG=0x0, it's controlled by the HW state machine
>>
>> I don't think modelling the prior one as a reset is valid, but I don't
>> know what considerations we need to take wrt dis/allowing hw control
>> here and what the consumer expectations are.
>>
>> Taniya, would you know?

I see you've already sent a v5, but I'd like to see the above resolved..

Adding more context, bits 1 and 2 control the gating of the SLP_STG
*clock*, whereas bits 4 and 5 control the reset.. I think if we don't have
an immediate need for these, we may temporarily drop them as we try and
figure out a way forward to avoid adding fake ABI

Konrad

