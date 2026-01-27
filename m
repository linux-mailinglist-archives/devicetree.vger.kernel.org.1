Return-Path: <devicetree+bounces-259857-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MysIm2neGnVrgEAu9opvQ
	(envelope-from <devicetree+bounces-259857-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:54:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF0593E88
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CBE063014698
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EF1D34B40C;
	Tue, 27 Jan 2026 11:54:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dt9pZ1kq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LuQg3IGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACD7E346760
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769514859; cv=none; b=gA2WOce0hmWbdmM3OMkfPHUrRGgY1mvwhiOeYpSVbpypINH8tLrp9foXiPJ7X1KHGAnqstMwwXENo9qCxLVxkPOn31+j5zI3/Gay+bkXJZHuCgEQUuNKmaSDXvEe3b98SC8FhHJIb8WKWcPozrsJSQqWb+RV1qzgu/RfG7OlF40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769514859; c=relaxed/simple;
	bh=9eFDs61emi4sfTHgfT/aGOzHu+flEQ8b9nh1vAFK02s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RjRYnrER9O1BOek1m6rdjOgjfyJBU0TSvjQHQc25wawltPyevcJZQq/0f+GFl7wGRbop3LZx2frUvglApNQM/onfLlxexZE+lxV1VeSFfmi0wYbM2j24waqTbO7WkdHXQcWzvKLkp/7DCzjZ7+hkq4iUlcjDiHwvmNIlEwBYVCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dt9pZ1kq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LuQg3IGM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R7QKAD658531
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:54:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wnf8iBeyskshIVYJYndhWW4y/eBQme9JrGBpWCNWUSU=; b=dt9pZ1kqLuyahlwi
	OSa5CtV+2V/l522Hg5Bqu605oMv2Zm6Lc2lpdEVpMiI20dUgqOxebQ0Vam3q9bnc
	0/gkxvXy9OynFjXpk5aK3MNHTP7IM+tCT8L7iGS4DY27u+OQofYaACWk9I5zZMJ0
	yQ+mnuAfHAiBs3kX4d9vGRuCoazx2CPww1JNBExhzCsC+HRMOlUa3QfObNlMu729
	VTVVf9wKTBMxRp1o6ukZWbbjqZIZN9J+CtEosZGSgB8sjtmMyxgVXOeJf1C906FT
	qCs2kC0kES3rJ0/Pe6n/ZcJFf1OVMtMx8SoM2qOiXrV4J7TZpNfxSF8tIeGCK+xO
	RBiy8w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxryn8x18-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:54:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5014d6dad23so6319431cf.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 03:54:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769514856; x=1770119656; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wnf8iBeyskshIVYJYndhWW4y/eBQme9JrGBpWCNWUSU=;
        b=LuQg3IGMR++QAcgb9Yc9+TN0+zdF/hGRUTvBenIBV3TrTw9884DgebgGUI8DeX6pvQ
         zni4f2ntie7OsN8lcHnSXcvfYs6sCJLiNFKehuvQzsDN54rCMc4nmJkNy2f+Jjcfx+mE
         mjOOgmCuKzs4v7MWeuc10afmlnGLJD/EaR7elyXeZ50QNCmZeqcNyQRMTD9uRO3j5fr8
         KE67D1YuVAC+C4UHWjsI1OW+M1fTkbuWjfbvUcojNgX8QLNxX+oPERW8wkLpuF9wJJKg
         Cn+q5HAx0yIjXVC9M42SatkBe+PL4KflC2QSz9fk5Q2hbBTUpSnXB8ux4SmYQ8OhS1oC
         qvJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769514856; x=1770119656;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wnf8iBeyskshIVYJYndhWW4y/eBQme9JrGBpWCNWUSU=;
        b=fhqxFRMc8sDcAO1Y9AN0qI3BYd3ny6GLtZ5hMhMarhuSSlp3som6hr9MRc0B18zkK+
         iJwkYlaun6OoEV4B9SK7TR+Tf+y9ARGxfM6Lsqmz1nunwe6aveJMbUcFzfknxi68qawy
         cBt1b0B6eV8RizsKUHqxYqeecIj6XVDJNjzUahafHPSBcDIbVlCt3JOjg09tTzkacClo
         Ac2XUwq10WT0NEBTuKWFp0CqfAIbbgqqAb9OpR/dwXPG8S/JLz3Ou0T/q3SwIZRFfBdV
         Bp6qsX3muySFtAnZvtk+j7uI2ylZCOtDQYoOThKV6NsUbIzAb1lP4OgcGTsO5vKc/JYj
         JYHA==
X-Forwarded-Encrypted: i=1; AJvYcCUEZ96laYBcKP6CkeNNnYNUWvyRwMNJTN2lPyy8ShSOKLXzYaMbz19PsbybV66yGtn1kd5h9eNpg/iE@vger.kernel.org
X-Gm-Message-State: AOJu0YxljnJz/pn+0yeo9PllsU/wRH15OOX7Gd7pDpp/zXJeYhoPLJ+w
	Db5Gr7raiKpMeX2hA/LAmY7at+5MMmYG7nDTYxr72dDpvobFfbh/8Q/wmKn0ucf9wcYMtBQyN5I
	bIqJ0/E3t+UajJIE9VYchJebA5myih4VomD62jJ1Xxtdr6sAwuQX9tGzTMPcT8s3h
X-Gm-Gg: AZuq6aIvVYPqAUHwPsTfRq/oFmQ3HDDvdM8b7JXEnvG7IBmbJEP5Xylu9aHS7vIn6ZA
	PRMqQ4E5MJEEyzTtPsYPA/8ZDIxWQrFBFyPVcxxli+O7OROCIoiXpg2292+cmSSfKnD8OjZy3SA
	gOaQH3LEDu6juEbLIs64ywY5I09KkMIDa3jeDT1pampvjCOrAWXBFcdIbpJj48PCa31JSn4nuBf
	J/iOqTHgUVko1vy8uGjCYQARESgUgsFPYmENN3Uzf6v8Ntjwoi1JCP8l+NGNW2p6T57zesn89AZ
	nWfjhLvLtopomkDUn3tdWvAq1Xa1n3mU7AJrSQPMtKo7LY52mxcZzZkqX8Wr0YZmxv/hlCA483o
	eGC5x38rX5cuKxpJOihprK+H6Hixpvejqrda2EFhAJ9mC1wltzDygVzsQ1ue7enJ+z3A=
X-Received: by 2002:ac8:5f06:0:b0:502:a0cd:4ca0 with SMTP id d75a77b69052e-5032fa0a876mr11839301cf.8.1769514856043;
        Tue, 27 Jan 2026 03:54:16 -0800 (PST)
X-Received: by 2002:ac8:5f06:0:b0:502:a0cd:4ca0 with SMTP id d75a77b69052e-5032fa0a876mr11839011cf.8.1769514855671;
        Tue, 27 Jan 2026 03:54:15 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b3f6ff8sm6356227a12.15.2026.01.27.03.54.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 03:54:15 -0800 (PST)
Message-ID: <1268a87c-a2c1-43ae-b99b-3940f4aff63b@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 12:54:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Set
 memory-region for framebuffer
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260126-xiaomi-willow-v3-0-aad7b106c311@mainlining.org>
 <20260126-xiaomi-willow-v3-3-aad7b106c311@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260126-xiaomi-willow-v3-3-aad7b106c311@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: UaEgNLQNEznA8_SFca47_0lrDtiu1Llt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5NiBTYWx0ZWRfX64XNcoSTFhmZ
 3Q3VF99xg7Kl1anEGZXqc6SiPc3Snwp9xN0zHU0OpBAAswL6xOTlglhZqcHB/Bip8bMXBRF7eV9
 CizhOK+joiZ1Im7FqA/O7uoKDgUVy81kiZqhxrqT5r3AE8s3uWVUeZ9h03Fh/og60OLd1h699Ic
 KQ4V6BHixQxDpnWE88cnV900V90S5c11slK+JPtLiOKb+6w/ybii5dFnsi9Dor2+uvQYbPpLURg
 tVUpVyckz2ZLkEY+NUG347cwn9m7XiPT9Ldk4UUuNiFtG58QpDJdgbU086+aJc/573MYNk69M0T
 C6T6TebUbJnQMK5MJ4BQ0gr8BoyvM5Y7ISL7XxfOMViovKriYEb+sE+ZDVEcjtfZ0a7XkdclGKz
 Ixy1JInDQzGQEOgyBHvZXkxIjp+XsH6bfW83SSAV1oWBPJ/7vkVRZBwj8rTAqSsiz2bA9bumHYz
 qSRLDY+lFce3LI2ii0A==
X-Proofpoint-GUID: UaEgNLQNEznA8_SFca47_0lrDtiu1Llt
X-Authority-Analysis: v=2.4 cv=FsEIPmrq c=1 sm=1 tr=0 ts=6978a768 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=xgpo1DY4mcIGgMJ4Mc0A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=YF3nxe-81eYA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.37 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(1.03)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259857-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[mainlining.org,kernel.org,disroot.org,intel.com,igalia.com,gmail.com];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mainlining.org:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DFF0593E88
X-Rspamd-Action: no action

On 1/26/26 5:34 PM, Barnabás Czémán wrote:
> Use memory-region property for framebuffer instead of reg.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

