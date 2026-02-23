Return-Path: <devicetree+bounces-267209-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEMPA4Krm2mu4QMAu9opvQ
	(envelope-from <devicetree+bounces-267209-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 02:21:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E411714B7
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 02:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70AC7302AE03
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 01:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95E0F2BE7DC;
	Mon, 23 Feb 2026 01:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VLVTKgqA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZzfwuJR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70FCD18DF80
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771809422; cv=none; b=iufYqB9XHJ0eOWDAmSvnrgXA2uNhJSYfPnQFqly/TagDNdiPWaT/LbOpeH9MGqtglVrc6dGc5zDtJOuwv1Kx8hBRVaBQyoSAMKNZqdFhUTNwNkyNq5Li28MkVMdZDYAbyou7kQy3Lo1N7/6lXupfGNqWBwdpdcGucBrvoNjBEy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771809422; c=relaxed/simple;
	bh=0Im4acq/Nf2dLlkLQObXe5jJJdgmzcFL4ciKudLiqow=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Izrjx9ZzLl4FwIGlfqkJr76n65CnS5s4tylZ8LuInCppNYDJ++cxu/O280k9JuioGwHfkbk9SLiUnLuivpffJZd0fdW57yeC3jpPNYjVD3SM5o5yCwt/Lt3BYP0oZcRypPrtRV7o2Af7TbjBEXmQuViQKC21M6ap4vugDrFv+fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VLVTKgqA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZzfwuJR9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61MG0NVP1135467
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=diSKSPgAJBG2NEAYSdP1/lWL
	SKl7GsVB4rIN8R1Vsrc=; b=VLVTKgqA+w9aZiS6iP3ZjrxLNFiMnkXEqJccuWQ+
	GFRHPvP6MXT858eSqik1bDyWZaVPAhGOw91Y2x3eeRwQu39gRStSdDCuga4fkU1j
	p+M5OeQjgEKzihQzgJLvBHY33f37oKjHmOaZqVRglJyJdg/SuMDLOoQlL5c+5gI0
	1wkUccLDETtopE+SKIf5GqaBBVkuHT/9MU3H+kF5PA3WJUaf1YdzOsEc0O9DGkKN
	iVMn/BmUF0TH2ER/kcG2jVHyImXqaxKBxDTTLF1sW2GhdtdyF9gHBKkocfmz0Vx4
	6UeUUuhJ3RsNG5YXd8ELqqMui7N4MApd0O5UR6Qve6IulQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wbb1mk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 01:17:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c711251ac5so3359801685a.1
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 17:17:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771809420; x=1772414220; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=diSKSPgAJBG2NEAYSdP1/lWLSKl7GsVB4rIN8R1Vsrc=;
        b=ZzfwuJR9TdJi59cUwWGq/W84c5eCVqWam7l6m4v0pBLKhUGhmlFe7dIa05Xi8FsWqz
         qJ3I1HKCtjFwryg7JW9SaXE0zpqHgVOUpYyt2Y7xwcjSsdOnRmC6nMLHdeOFlDIyZ9Wp
         aui7+I2OzCt9DEIh9TbDzUlLj2Z/lrWxs+daiEWwUlQ7ECrAdj9TcCLZUrH5ydIcz7oy
         8cmF1/AHthr6D92wZonyQPcQmGg5JFw3Ag04tfflsCtbMGk1IIf671uJTzxJkQjbMeEQ
         usThEzpnhHeKmSzdUsfeWcTYrolx74NugG99l1ouEt5xw6otK6cEgr35RhN6CZlWl1sM
         R9Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771809420; x=1772414220;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=diSKSPgAJBG2NEAYSdP1/lWLSKl7GsVB4rIN8R1Vsrc=;
        b=OqeMQN4akMROBLjLu4pSIU7dha0tLgSorxVMxyKMqnauv9PRnSjJ2vh0nTMAhXeeR6
         5qCrRW/oK0fjqD2PprQSoyWpX6epG0MtOYoOPOERJt6Pv8TW6U3zmpyg6IgP2S+Yp+nE
         pZjwouiDAltIKmo2/mm2evC8XgwGgawZ7Z7ttwgt5mBrlg6BEiKX+1l0jBAJKuGCDZy5
         dtK/vPgo91aMw07hzb1Rqna1OKD4LnA63jStgNiiCYy04w3fz5TOyYAlF53DxnAm9BJg
         jITa2jt5yoqv36YQQMz3GExrmxAlESfkQXl1wbJYV85+bKFNu7iuxaCxRO65RMndWAsv
         3wfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbdRJAFQUzv0uVDK1CEI5hZJOrBrkJB4U5TihY2ygq6+FTMqtTuQubu6Yr5zv4eLTUiQd6KCeieiVv@vger.kernel.org
X-Gm-Message-State: AOJu0YwXU2wvmsjxqvPLGJmmrg3H2bBvKZg3MFCxp30mDwCrAbxNQ4je
	ajDxpB4kK0aKHW+xWwRRfkG9DrDzYbMrTEkooBD7lyiAkohd3X2iTRAq5dIQP0nQ8EccDYX/TWm
	Y1endRGdaTDEgKW5bszApOrtGwd4BpHEFi2cCIjpDu/296V5oFSx2tfbZElVAGMFF
X-Gm-Gg: AZuq6aIK0lURtnC3o67vdRzAzF+qLeE3Vdpuu5oocYb1MvrlKFSkzAhme3/JWnm8D1P
	TCUmoCPWMZZjH16nG3QLe27k6HTb/kUyls9HUdENdDVvVoiepjRwfhv9C1fd/44tK2c+I1n9APJ
	DEYUNICLfEI8utsO5SarNEk5j2FMrvIyenDGnr3gMaLLnwyI6F8RJ2vOsnCfFwhMGmm0cbyBBCD
	9j9Rmj4DchUP3yH+eQma2qaPDmkY5kWY30iWpBfylT3dolnZbTZRbQH2ewjSmuJyQqaugccCCxA
	8nYyzfs5mWGa29wKd7Evi5mZhU8D4/tarkY1otNPkXLmox834yB9Vu1fDfGmP4GZigllKGtz52Z
	TLlLKg+d+j9JJt79nOjbeq93moOg8tW3V/7eXciXRhUl8uPMHkYqXOd7xptQ9EFg5Oqq8hlhdIz
	5mz3XpcyBTbZe5B7SP58YMaHKevAHZbDclruc=
X-Received: by 2002:a05:620a:44ca:b0:8b2:dabe:de32 with SMTP id af79cd13be357-8cb8ca63e8emr924602485a.42.1771809418860;
        Sun, 22 Feb 2026 17:16:58 -0800 (PST)
X-Received: by 2002:a05:620a:44ca:b0:8b2:dabe:de32 with SMTP id af79cd13be357-8cb8ca63e8emr924599285a.42.1771809418378;
        Sun, 22 Feb 2026 17:16:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-389a7a860d8sm11389151fa.32.2026.02.22.17.16.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 17:16:57 -0800 (PST)
Date: Mon, 23 Feb 2026 03:16:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: webgeek1234@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8550: add cpu OPP table with
 DDR, LLCC & L3 bandwidths
Message-ID: <ukixjackfe3g6oz6gb7m5oae3i6wz6czycsxfjjphzgdirvvwf@w3ogubzwusxk>
References: <20260219-sm8550-ddr-bw-scaling-v3-0-75c19152e921@gmail.com>
 <20260219-sm8550-ddr-bw-scaling-v3-2-75c19152e921@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260219-sm8550-ddr-bw-scaling-v3-2-75c19152e921@gmail.com>
X-Proofpoint-ORIG-GUID: 6kEIONiuXONJzjx6hCXf8MbxY_a3COrr
X-Authority-Analysis: v=2.4 cv=UZlciaSN c=1 sm=1 tr=0 ts=699baa8c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=pGLkceISAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ze5Wrr8Eh6wvvEUSacsA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6kEIONiuXONJzjx6hCXf8MbxY_a3COrr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDAwOSBTYWx0ZWRfXw1qkLI9+bsmM
 RWjmk5NXb8t5BQhnZH3GoTRf4xlMBLMGtqyt5nTQR/n+KwzQvrMM2VfSqdpHjmtlhaQnQXL8tuk
 53T6FI+CSCZOsj3AiMSO0oGJKGCxMi9TTQznNe/XmSopWbqmuSGvgOdo0i7fPeZcm9ggMhpf5sW
 7KahpGRytxY/am+MsuJ6y3KKjxG46R3uhPIDU9RRv50ejYijXyCoRyV2fAhecotVt+I3GFB8AUK
 bUMnePFqof08oy3Vo4RPEE5HAkbkjKi0XlADIog11G42DVpFCEWqDG33Lc3PNjfFLV1zwmMaqb8
 PTp0HI9H9eaE8w5C2898GAwOq6EDVYdC979WOV4jQGCazOevQTqpsBQqOW2/L7TRTi70GPUQ+lo
 Z2N1LKtfK3jXvfAo+Ky6CbWsjK6MRqxUS5xBHKmSzR5oLYgraTBAo2C7SjzpQJOG4VlDiRnyKb4
 lTm4IdAy0ogSmMW94KQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 bulkscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602230009
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267209-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 67E411714B7
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 10:07:40PM -0600, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> Add the OPP tables for each CPU clusters (cpu0-1-2, cpu3-4-5-6 & cpu7)
> to permit scaling the Last Level Cache Controller (LLCC), DDR and L3 cache
> frequency by aggregating bandwidth requests of all CPU core with referenc
> to the current OPP they are configured in by the LMH/EPSS hardware.
> 
> The effect is a proper caches & DDR frequency scaling when CPU cores
> changes frequency.
> 
> The OPP tables were built using the downstream memlat ddr, llcc & l3
> tables for each cluster types with the actual EPSS cpufreq LUT tables
> from running a QCS8550 device.
> 
> Also add the OSC L3 Cache controller node.
> 
> Also add the interconnect entry for each cpu, with 3 different paths:
> - CPU to Last Level Cache Controller (LLCC)
> - Last Level Cache Controller (LLCC) to DDR
> - L3 Cache from CPU to DDR interface
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8550-HDK
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 367 +++++++++++++++++++++++++++++++++++
>  1 file changed, 367 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

