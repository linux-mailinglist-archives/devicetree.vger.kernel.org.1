Return-Path: <devicetree+bounces-267859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPhbEfeQnWlKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:52:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE011869E8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:52:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E8B113038AF8
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 11:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 988303803E4;
	Tue, 24 Feb 2026 11:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O4EJ/K0I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EG3UuD/O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637593803CF
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771933715; cv=none; b=fy9z9mjhxS7kWMFej6ab9/19QqZPEFtQlY7lbshTaQIchvJsoQzSwim8NhTj1oSnXUjByoiG+Vruryg2EkXpKN6xTz3+jFYoX29OMJ9cISTbbwares+GIyXexRJsDRVZLOvh8cHT4uSssqDhAtL4s7B0XgweQ1gbLlot9CgiewQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771933715; c=relaxed/simple;
	bh=0v6pvTlJvcG9+r5fugc483xRtf7llEy1Pb21ln+tXV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FhTrY8OljQBNHzJYuKJCziVj4rqaTHmfN1ykq52sMOqs+0jARK/KOSX0NeIwgH+BIMfk+niwATsVaIUtu60mGM96yP7kmQAWgxRhgonXP3Kazpv2SgyIsyqXav/YCMaAxnz/g3Gn9E5LLMOrD36wACneoKrIm/aToahI2LS8zw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O4EJ/K0I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EG3UuD/O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFM932006363
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xH1E6DzzMr3/xcCAQ2jtTC36E+qRKswe0p9EnplcO8A=; b=O4EJ/K0IudBMeE7x
	n4zu0ajhY6HbHLjsIB5e8PpNa2sbzDZdEFWyjoPs9jGZx1gvYUoitLUlFMl5QvvW
	8uzOQkWLY4TNopcUY9xBQypCHAwWKVi+dxxGg0tqPc3R/F1POWiqJXshqh4Fau3E
	71wo+NYJ1CS/fv7Ev9Q0yJIGfW64A+qjAEbqX7EvhPGvHEF3hKquFKDmJQ6Cvy2E
	2Vv0xeRp463XFDu6k6Iy3laglvOlvDYHG7YFnALiuDvSwxIu5ZmZw7+vQUgAwvtl
	VHcmLJGV/lxjPoFQCsc3zhLi+A48gYJT6sP3PcFeR1/l2Izagt6aWRkbo+Yldpub
	/MWtVQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4569bcb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 11:48:33 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50dfd542so544092285a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 03:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771933713; x=1772538513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xH1E6DzzMr3/xcCAQ2jtTC36E+qRKswe0p9EnplcO8A=;
        b=EG3UuD/O2Ld75uXAA56Q5IliODXHz3HDj3yJeIxkiJUxCPvposXJPPknjUzcHzeqqS
         Bv3c+nQ70fbuKQnPrmeUfyV02Kkmu03W8mQSyAD1ug/5EMuLXC6NNACVnw+9N3iwc4bc
         tUMncKf3hlCB5iZcqpVB10aZptp0XUOqQJo85mEKI/q7ZpK4L9l/1PKmgEdZRkMWeXYm
         5qK1z2SHNZWtiUU6n0zrgT0uKg9KG47A1f2pMXFXIO2wMcEND26oNxJOHrvhSsHtCV91
         xfjLkl1s9AUiGzAwp3mSMFQ8wfGu5pEgmzGh1tbSME/JZZp7gWLfqAgpgqyLU373L4bW
         sfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771933713; x=1772538513;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xH1E6DzzMr3/xcCAQ2jtTC36E+qRKswe0p9EnplcO8A=;
        b=XX9LZQbx0xx34EhfpaJeyykF/+W3YRLFisxnNKuLZzulDuKWgIKVg3VHxqK4Nye3PH
         orVEqPIlzlO9203Z1zZx6BicPdyZj0Iayw3z3oKhKCtr+yggs7o3c7zyaiyC5cHVTq13
         2lNX8tWsR7/SReJNalnUdBBeQ5LaxRld8VIfRhWzQ9Qk3L7h4Ly0AbZgGBXEqm2d85Z5
         iJovnwF0NafVlKic0FxXvdat/ZLfyhWwYXoDm1Z80T17RqXd+h/NXwQvg0L3gTLLKbD+
         1ufL3lc+dHLJ7T3gsEU3Borum6ofx9bmpCzqZMcuXDsIrnOSP/moToiXpNeFc4NET5Qq
         C8eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhByK3SQa0j3ocvhgDn8POFNnVbeb0N2fdvadIv9Ka/1Rw2tniPuoHib/wuaYkd3yBuGtlppYMAZXK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz580B7PTbDc/du8LSsZI+JY5BwvugHdI0zZDKJvqTo56mWRTLG
	bGG8D1nTcZTC+E0zRHhUHeTnRJSKKN9t97Vhc8jIDHfvFS06WBttCP7k7BW+1sCdze+IPsBZAWH
	Bwl0yiYhUlkhv9/8amM6yju6zwLBo55agp3IhSs3c5s2L3DBSjaCF+ylDUchOVpyT
X-Gm-Gg: AZuq6aLfVmCfQCOp5gvUyZ3LI1b9pXQC0XvfE+VAg7LIm4UGyyQu8aGyV82uuNmWB8+
	BUAxxiSYogUXqiFW0yhgqWne0iprp/Go2HWO7eFT69w167pQaQxYCXuxIp3ShrtuGXvAlSnPTUQ
	8Iuvjv417wxyHMkPRv1Weuz0+/92A20DjVrp74QFpwuR5T0eBifpXHVDLaOCqlCM6eht4S5/AgG
	z7Tf3H/xESmvR6Ucobuw+3GgHjHZjrLpSmOlMvh/p/BaVn5iUe5bsjXurcF1fVvX13y58DdNU+A
	Cc9kYRHR3kKzMdEliEK1esojuVYjiLOofquWOW647PO/MJ8G3cPp2PYOvlJiOwx3Y4B9+8CG3gU
	x2jCS6+yyXWx7BzjqscaI4v3qsQD6G5PflwlPABE/0VeqRbmUOioIhEaKbvnGEfdn7yQaRGoId6
	vqRyg=
X-Received: by 2002:a05:620a:3708:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb8ca7cf28mr1109027585a.8.1771933712615;
        Tue, 24 Feb 2026 03:48:32 -0800 (PST)
X-Received: by 2002:a05:620a:3708:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-8cb8ca7cf28mr1109025085a.8.1771933712213;
        Tue, 24 Feb 2026 03:48:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65eaba138ccsm3414681a12.17.2026.02.24.03.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 03:48:31 -0800 (PST)
Message-ID: <2819778e-3303-4993-b8d3-04233831e14b@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 12:48:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: arduino-imola: add support for sound
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223133950.221234-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223133950.221234-5-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: WUsQmtzJl8nmQNNVxFGF1yjDs21Qb4-8
X-Proofpoint-ORIG-GUID: WUsQmtzJl8nmQNNVxFGF1yjDs21Qb4-8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA5MyBTYWx0ZWRfX9/Oi9JJHN4ih
 bNxdGPOo4MIPvSBKawH66QIcxHk6qZijwZfx/MUQQXp65tyqocvG6z+MsegPyHcFQ3fmix+4wGO
 PRRK1SI9HP/WPg21e9FxZ5/iQynExTuHjUEpKqwRkPRRginQQdGJY5mbFIfgv1A3yrLjAaR4iNW
 BwlLaE6Zp244ih96Ul7uGYRdrJxyH9rNYcl+Wk/jroTfcopDy/u970zyEOeaRMBiX4t0r+cMTH/
 DqPi//Mg2blG05Y0XX+GwLwBWPghvvg6m5x/xSkmZIFwlDYQCdGxmOIGQ+Bho1UzbE9xUUBLxsC
 7NjMjLPW+FB6rZ/lXKV9c4m+nc3y5Sl/oMj49mv/a3EZpzKahwLAFKU/2hqqmzjFJ+OPDd6/xuu
 RtBpESuDK3Zv+r1pQJakMfkve4xx6BCMa8VQPdU/2c11cg36kmso1VgTU8kozZcqPFlbo+PfmyT
 r1yPeRaHEiGHYRcsVZA==
X-Authority-Analysis: v=2.4 cv=J8enLQnS c=1 sm=1 tr=0 ts=699d9011 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=VAOo7bAQqRyDQ9SCnccA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267859-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6EE011869E8
X-Rspamd-Action: no action

On 2/23/26 2:39 PM, Srinivas Kandagatla wrote:
> Add support for sound on Arduino UNO Q board, which includes
> - Headset playback and record.
> - Lineout
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

Please address the feedback you received on v1

Konrad

