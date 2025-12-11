Return-Path: <devicetree+bounces-245808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F441CB5808
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 312893004C97
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2482F618C;
	Thu, 11 Dec 2025 10:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pDrWvMMW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TDIFZ6sq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D05286D64
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765448446; cv=none; b=hplKY/b2f332pPykW3Bl1avPvRylZ1c6qjeNT9sbgwzyGhTe9P3DZzMorFhH7/u/OH+KLjHVwjFBbDHqSr8/giZntzNWhNelGthgHawfbs2hpuTuJlA0Mib+QFfd8PXNQoqjpVJV778gHyhuzML7mOERTMB+i+OKBrGmxE+4cC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765448446; c=relaxed/simple;
	bh=Y3cdtkIMwGyW5ONOCORA749N9ti5mDASb0PHkXUJmcM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SZEOL3iL1Fyx0KIv/ZAPUT4DZgAcD+ioFFSshS6Lj+aDmlZ3Dtpg78NijKBAThdV+YusO6jok5TRIl7+LQX9Klth3P3yDv/44M/9UrvL+GlzuyV8JEcrswuZZYlA95nNlzm3/u4lx96SixdqNPhgj+X16MB0HndMGWDaMIER2Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pDrWvMMW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TDIFZ6sq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZQtW898968
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:20:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Rq4x6isU1W++cT3HFY1FJbiW
	jgg+1qXYsgBnahwAviw=; b=pDrWvMMWz2EH3etN9/BqOVa+/agAk1QrEAQu5kcU
	dDIZNmqflSAOL7w7SmZxPyHv9+2NRnMdc3sFjPr4LUddrqwEUA13z1a4N8OnLYlC
	vE6+Adkao6RX9pIlJDGMVEsrgbg1N/anx0C2YPK3wxF+BHAC6kQ9gc4AaxA/icZL
	+zoM4KuCIE45OaAB0+CpjVjzhvIb9MW12mrNh4qHoiFHuB9JWOKnKrdTvJbeLWAK
	VAjT7VpM7XD7Sl2ZRC9hbf8p5/pMtBVnQ97cK+PsWaqJgEGAsV+mrePJa4bShbnM
	bXnzAz2obFpz5O1L1AjykQNqaM+wAabSFhP6o7w6sP3xtA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayrpagqet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:20:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0c1d1b36so34804781cf.0
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448442; x=1766053242; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rq4x6isU1W++cT3HFY1FJbiWjgg+1qXYsgBnahwAviw=;
        b=TDIFZ6sqwJlS15aIxkgqHA+yC2iJ2wuyR+Tz4a8Yjx3rAb69eMW2fkEAnrF1cy2c3L
         htdAIS9sx50mkgVE/2aJfRhlJEOf7izSfgiDecibzqvSeojEfYAtrbVJwlV9ATgOQJPe
         Sq3yJLNbpHXlszIZLxPsiCC7zLByof8VHEccWsg6ekvOsGJIirsxVcyRK9RfRLc4n6ih
         E2Csbeq8GgG9DmYB4R55Dl68DVPbhgp+yLEtB/yXEHdBLRbi+9FBDdJy4E2dTw1cufWc
         +Bau6QHNtNPVthpl9F8bLilUSCaJENU/PoHrzC9BkqQWKT5pqrN4VRtESl9FP/NGsKUT
         cuKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448442; x=1766053242;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rq4x6isU1W++cT3HFY1FJbiWjgg+1qXYsgBnahwAviw=;
        b=fhMiGfotdP+VbiAA8SIkulZbAEIhwvWZKKOdntIIFlTl4kneNA+GaBWRrUbPjxQtTg
         3tPbzIVBXx6lHoxsjP38Z1V+K9iHjUoX9WUtQSCQTHHGKrsVfaGyRnEN0S4dx75uWyJA
         kPwPI9gqOWlsCA9sEs0uxqRY4meTiy7mTfDIDAWpLEU5yU2sFvBj13iiFXAX8BezsG8S
         VwWDCQoHUBFHyHDrY6eWxbXA6oVXMzVvkZaV+eFqXNNamhZUQFEsypNN2WkM4jCk0oBz
         N+ZpwJ6kUyFqTO5I/f93uuRphpQ5psflO992LtoBexjTP6pztpmAtt6+5XM/tIDWuTOe
         HBgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZMAmG7uQP+CjCd2v4O8H0Ssmgj/3V2nFMu04gRsNnFfLtL+rKQiZoH16bXtB8FN5MTXZ1Wf7wRP8m@vger.kernel.org
X-Gm-Message-State: AOJu0YxNfEr08sI0ZvcjPGIVch7ywA8mnMC+fNkrvcKjy+Ub4AMHGOsl
	CW/NFBQD2nvPv/I/UxR++dJWBN/r16WxG0qWDOFXVNXXUT9cFQWNUQpgpy9Iu4TtR5eizauTad8
	p1iIxP1KxaYrjWHiyISq3CYpA1W+aCr6jwi1znJdAGgCgi+vhStQodNYRSrArU5JF
X-Gm-Gg: AY/fxX4uxiXEC255e18l2WjVjWckVz12zldjgIzgBVUamAoGwMsnhaiVfgb9BBIWV8h
	KlBGhuAUJF4g8cxnfPbBri4U62/z6z+m/U5cUIDkoeERORqVWAcpzRhaTlmHlFuYLOodEqnvsav
	Qwg42undzivUELUOYiwlb2SUF0sFxQsl9KQ+6V+0TLdZV+e0kZbFgLZzqfX9Nt+53CTcTG1wkVT
	vdpyU5ZDQLAitbyVZHDBhbz2Rjge3k3hGQaXQ8t4B4fXSCGcCRT5GTA4wg9KXmD0mhtqzF+4w06
	zjFLBNczq94e8zrsH/xArC4Uj2WdgRcFyES9xpUrKgbxrVSYCw5NPX7D4ligIA+5L1k4zyAmPOl
	NWTIA0glqiBniOnlGfk8X+Q==
X-Received: by 2002:a05:622a:1311:b0:4f1:8bfd:bdc1 with SMTP id d75a77b69052e-4f1bfe7cb6emr18272571cf.40.1765448442455;
        Thu, 11 Dec 2025 02:20:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGWwUeSB/xMxx/IAJiwJKv0ecU1P17oOc6uFVfHwRIS48Z3Nk539gq+qcklTdZBf2ejWslCQ==
X-Received: by 2002:a05:622a:1311:b0:4f1:8bfd:bdc1 with SMTP id d75a77b69052e-4f1bfe7cb6emr18272361cf.40.1765448441996;
        Thu, 11 Dec 2025 02:20:41 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5c8e59sm226329266b.62.2025.12.11.02.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:20:41 -0800 (PST)
Date: Thu, 11 Dec 2025 12:20:39 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: SM8750: Enable CPUFreq support
Message-ID: <gtjkhssrzckfegxfkjt42hz2zffkrd77wukhqwmzxnk5fgpicv@mebbk3x6dgbw>
References: <20251211-sm8750-cpufreq-v1-0-394609e8d624@oss.qualcomm.com>
 <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211-sm8750-cpufreq-v1-2-394609e8d624@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 56n7i7Xgn-LPPLHOMcIaMTFxKTzFYPYt
X-Proofpoint-GUID: 56n7i7Xgn-LPPLHOMcIaMTFxKTzFYPYt
X-Authority-Analysis: v=2.4 cv=G9sR0tk5 c=1 sm=1 tr=0 ts=693a9afb cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PptT_Mh96ff8s3TZVEoA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OSBTYWx0ZWRfX4X33r7Y9pr5Q
 4O9ywy8RExIALVAwye671uTIrBLuUARtbcLLwXcbv1ojmOQicSB27EPuEeEbsGby4L/wnHzH/x1
 JpSZHRvteK3Qoc08mAlH8p+W8h2scZ5LHJ6SL2S62QwQJVqjZlN4/W7im8pV7yeH6kdwWX2zk31
 mvX8R1dxfcuEpQBHRwKJyUcu5QspMi7yUAqzLj2QsmOEmEI53YfjWmnb4HmxxuP0ved5JXO8Joi
 ynnk8Tva1Ls+xbBIaWPhlgK/SJ4cNZHiOnny9gziHiFxQL4T6Hf0vmRK71YxQrG1k7wgO0FrI1s
 +R+nc5BAxcOBXJxeHSdq3aKpW3IU7PfrGtolzMLD9TTCqsOe1m7fdLDzLTIgiRdC/xS2IT5zdfk
 1fWddPUJa+XKxvDE5r0BGLv4DDOHUA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110079

On 25-12-11 00:32:24, Jagadeesh Kona wrote:
> Add the cpucp mailbox, sram and SCMI nodes required to enable
> the CPUFreq support using the SCMI perf protocol on SM8750 SoCs.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

