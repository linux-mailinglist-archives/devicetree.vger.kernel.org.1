Return-Path: <devicetree+bounces-262667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +MbCBdFNg2mClAMAu9opvQ
	(envelope-from <devicetree+bounces-262667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:46:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62676E6A06
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 123503011C77
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 767823ED13C;
	Wed,  4 Feb 2026 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XwVGMDkA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UYMISuU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC853B960A
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 13:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770212674; cv=none; b=oQg8ayyqCkUrVXp1MJ/dYn+VyXZmjMbmkj12NunWW5uZ9C2BH/aWRRdVvUcUYnYjb0nOLrUyHfanTX1VREaCgq0rwVz4mfQglAvP4XrQG2ltbDEHphVuyL8ymHoP+6fqpn/A1SId9huEv04GFHskK2CKSYW26DVjh0OmcrHOul8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770212674; c=relaxed/simple;
	bh=MQGHHPzVdGGY8D/fSv4Dv983HDVo+MObBMQyIa/vXbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oDqeb7cCwH2XwLFaYj8iLoUEn0NBeApzDdjCdm/VB98KQvpscAhT4onkZwIxgCCQzFFmDiDW0YnInUdriUkwhrMkULRVKYwcO9jlVVGNToTaX80DusnYXF4Yyk5uLnySl6Ti5U3zOJvj3FMbcYC+j06faUbKDX2Wl9TCmdLIp60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XwVGMDkA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UYMISuU/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIQSM898842
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 13:44:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dezn0ig7nH8Z2dFhym2GV0P5g5RLh6rh8CVm6EDr3Is=; b=XwVGMDkAK0hnFY49
	ebDTS87FkRshlxWg75t6qHsl288iWXSYNSYdUGX+UwdPZK1cIaCa3Svc8VzgLbyh
	SmGdwobdS60SFhsVLdt+kamwLbBfd2sFZu9juvWnTji1g3yHk/pvFc67FsnWDyZ2
	S6OnBcwNneYxl81TR7Mcdy36mTyiLElJsyM2sH29Ta0Gqo+xRfUN79Rt76X40Cqr
	QTw4yLzU76x4juBSVvKgPKkccWEFjc+pM9w3QCmcSBXL2sBfzHGicyVXySCSrdi7
	e+MqVyVrQK8uoIYs0wmDTGLpfgcs8+hbg5v8E0F+9yN+uvsUUROmY+CbCYdCkLSz
	W5mupQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c445wghwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 13:44:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3952cbb9so19900585a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 05:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770212672; x=1770817472; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dezn0ig7nH8Z2dFhym2GV0P5g5RLh6rh8CVm6EDr3Is=;
        b=UYMISuU/PNStnOaizRwNZVJingxfFnsKnybSQ8KcbFlZx/pgGlGDqwi29RAIYgB/pA
         40Ms+UtwR2BrjoIdHbtUaPJPXf/Jvc3rVkX2pgaVX6gSb0SIS/ffiXQHoAA5CnTp7P0F
         /XZzSS3L+KZaszcTkjXBjllV+NRQbWPlJIwkQdxQ+6gmUMmd23LGSOteUXu4hwQahsUM
         xtgBhhWr4nXETc9Yr67/FJe0Y4QnjRKCtJnwVsOIZDlS7rCvu0xOHaxgKUEPvs5aZNiw
         FJ/LftkSuUiNjuZTuH/Gg248ALy4a0vRtPvgbggnpqvQruxLC6FxjiFugfc9SnFB3BE1
         RmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770212672; x=1770817472;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dezn0ig7nH8Z2dFhym2GV0P5g5RLh6rh8CVm6EDr3Is=;
        b=MWCoyYeGS43FcwuvSS5oKKeu3fDsq2XNshY93+NvMAzaF3NzPY1r3Rz3sC1MaQkDEM
         Mvgr7SGPNv8452Tzje0WThoHn1gwkiIQ3NppXnAXc4hD/90axbPxN1KyHv0iO94ZwH2f
         kd/4691Xq/8HAzWuLrN2FZk0XNZrWhD8PwpRMvOvAVax1jvUaVnsvsYetfPnVqcSaBGN
         AVuaWtE+k/AAkmPgoNZHEqvCHBMp3SO6G9faOUkhPkz/D2xhEmBBK6RcUx8S02j/qEe0
         yHpbla6QjBCl5ngvkbloBiUHnJ0lmF0N2rsiKcO96KiFu3gfBgSwJmmKeRSuhYR4he7I
         FaBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVHs5IlLdzzCMI9ATXtpVMNpfcnO8wPOUaBjt1PstdLC52ww25juotKTg18nfpkcs4Fc3PMbBASIuK@vger.kernel.org
X-Gm-Message-State: AOJu0YzyA9fx8UNAt/Q1dfgWupfKo1Kw7APYBzX0KPhpcCQqRan/3hD5
	sDlBOVMMe7pz8J5vHy90PfYvswCluf0408tMQJ69UwAXjw1QPut2mH+eTYAWjbtjWKZW2mC0YMK
	xSOzflbbeg1XU5WRlttmoOeIHnrAPpzE6bB1Ldw0G7UeWsLXfNQRXjQhBPdS54TyO
X-Gm-Gg: AZuq6aKos24nEdj9UuXYowFfrYeslQCzzfJ1qOUUKHWyG05U17PHDCYpJOgTu88IDhj
	DtwId1JSiFg1TNcd6QDQUcZIQrVlRdIAYJ+9gg3xIgMda6F88P8Khm4eE53+upmqCOf42wD6590
	QvC4VmNUa/cBu5XTBAwjaWzrYeFMyNe+bYG07H1/EaS3FifWzcXS0rCSJpIKl+Iu5zYTcjlyAUb
	D1Bhc3SWJ7CZ4R+av7u2/h6jP9ciL+megZYR20900Nvrgv08n9STZ4Lglv+mB6N84aQhF+RQ0qo
	lsBCuI/SFWxUwFsp+drmD2soaZz45s2Zoj9z1TY7z53+bdHEd+OeWYoqXpJfesoB8T+ttKIS4DG
	tCd/VdHA2cBdYwRLrYikRZ3cXiqs9fMw4elrdVIYB1QkpTYiib2t8Vc6P1mbmlwcz7Qs=
X-Received: by 2002:a05:620a:1a06:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8ca2f826d11mr299991585a.2.1770212672483;
        Wed, 04 Feb 2026 05:44:32 -0800 (PST)
X-Received: by 2002:a05:620a:1a06:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8ca2f826d11mr299988785a.2.1770212671987;
        Wed, 04 Feb 2026 05:44:31 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9feeff94sm122877666b.35.2026.02.04.05.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 05:44:31 -0800 (PST)
Message-ID: <34ecaa11-0d2c-4981-ba5d-4d3d46e41dbc@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 14:44:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 11/13] i2c: qcom-geni: Use resources helper APIs in
 runtime PM functions
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-12-praveen.talari@oss.qualcomm.com>
 <7733eac7-8158-40f8-8887-44e458d33e9b@oss.qualcomm.com>
 <3466212b-802c-4ea3-8661-794da34c6c3e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3466212b-802c-4ea3-8661-794da34c6c3e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEwNCBTYWx0ZWRfX3yY0oAWsKuC/
 59rd/HflqIo76JO2aCMBySE2iJ0YwA51ctPNSuUzJ1aex5jZe2F35wCJQ6aEKS2tuyhUrvoHsuf
 GhWN52gz8F4L7/g/sG7OceNlp2Dx2UY9sFFagi6s/i+1yQ7qFzIA0NJNZc51QwrSUFJuuWvG3kD
 /cjJqMLRr4X1Ggv4YtCh+bSozMP4hFXweFcKhUjHdpPWHjj80tKpg/11/ZF4r8Nz0Kl+IqJ3cMd
 yU1tMIm6Rvhw0Tvis/y5zyKsKV2inzoMg7Pd/gphi42pfTbExFGjNM97B6fPhL0Qtokz/zkwdzw
 FXCTWiwtw/CIPPzcCSR5TQm9Ey4RqpP0CzAVumbze9omOYzDxaSdQhyilEHytit6W0FZN3CMPE8
 KYuG5eLrbPTZn/+0Rr7ibV7yiyEp/xcUiP92z0SM6gWrqdx08ESKexfToiM4D+sp/GY7c7N+5cB
 4z2IK33tcLHhMYbWGkg==
X-Proofpoint-ORIG-GUID: 8kwUln1FFkIdK87EbFGa2su4YjBb1-hr
X-Authority-Analysis: v=2.4 cv=GvhPO01C c=1 sm=1 tr=0 ts=69834d41 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KysUWGufpr5dDgJzMcwA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 8kwUln1FFkIdK87EbFGa2su4YjBb1-hr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_04,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040104
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262667-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 62676E6A06
X-Rspamd-Action: no action

On 2/4/26 6:06 AM, Praveen Talari wrote:
> Hi Konrad,
> 
> On 2/3/2026 6:18 PM, Konrad Dybcio wrote:
>> On 2/2/26 7:09 PM, Praveen Talari wrote:
>>> To manage GENI serial engine resources during runtime power management,
>>> drivers currently need to call functions for ICC, clock, and
>>> SE resource operations in both suspend and resume paths, resulting in
>>> code duplication across drivers.
>>>
>>> The new geni_se_resources_activate() and geni_se_resources_deactivate()
>>> helper APIs addresses this issue by providing a streamlined method to
>>> enable or disable all resources based, thereby eliminating redundancy
>>> across drivers.
>>>
>>> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>
>>>       disable_irq(gi2c->irq);
>>> -    ret = geni_se_resources_off(&gi2c->se);
>>> +
>>> +    ret = geni_se_resources_deactivate(&gi2c->se);
>>>       if (ret) {
>>>           enable_irq(gi2c->irq);
>>>           return ret;
>>> -
>>> -    } else {
>>> -        gi2c->suspended = 1;
>>>       }
>>>   -    clk_disable_unprepare(gi2c->core_clk);
>>
>> I believe you can give gi2c->core_clk and desc->has_core_clk the boot
>> with this patch since they're no longer referenced anywhere
> 
> Sorry i didn't get you. Please share more on this.

I think you can remove these fields from i2c-qcom-geni.c as they seem
unused now

Konrad

