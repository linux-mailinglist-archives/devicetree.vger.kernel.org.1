Return-Path: <devicetree+bounces-277779-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIn1DBDzu2lOqgIAu9opvQ
	(envelope-from <devicetree+bounces-277779-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:58:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5F32CB8D3
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:58:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6CD2C3026078
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B64183D4107;
	Thu, 19 Mar 2026 12:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GT0iLIPv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EPvypnVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611B63CEB9D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773925081; cv=none; b=U76Jp4V2PkjGFYYxlOzBkaydegqWqpgxZ2CCKHlV1kVni5ODmWKDvaGs9koPUJr7S0g2a9NOoAD2qeRQtEJUy4XnP4fnYxZBdDNr6FBtdeS/C3ajaiM5f5Q1LI/Q6tXzR+hzaJm/RXBWsYcVBEQ/iBTqAlSpv5it/cXQIUApZ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773925081; c=relaxed/simple;
	bh=zIvYJTY6gH0tywfJsDr0iY9gInR/p8kKtR1ilofgYwM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N/75xrwxcHM+Cbud47rloKnEajuiN2KNVbSL+hV60Mnv5XHMHe/JIifTIRpIg7vPSmv3FtI5f3oSKQ2OjWXUh9077/T58+z/2u4ENNuAelYlDiI4POlJ6bXGaDHiLSdLAwix17LbkeNl50lGiHXzCOMPzl70zJc6mvpB+In6ZrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GT0iLIPv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EPvypnVS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J740gF770533
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:57:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MfuF/PlZWMgF3ErD0zfEEpE4i/iFIciw6YjqRozDOSI=; b=GT0iLIPvcgEkI18t
	RqrGsWYCMxUKkcGWtFcyAqOT4bYfG28CXoZOS4g8py0AKbM8x3FzpxcJh7rH5lZN
	1MVc/LAniCBG+d3D9kQb8CMDr3eT4EnvZ9m41mInGtzhlzo1SQF/CN1ws/Jz9D/O
	+ypAokzAg6PC5G8db0mBkPTpyjBq1usKy9ED+nT9V3zWuZYRDD8u2N2rlLC8vf9b
	qN7XrQF/MBm368nXCsPo4M5yp7MJaSwYtpZaOfRy1Hw5CknZHzuQx9o7V7BQC5Yv
	dg+2X0ZGtJ65SM95uSxW3JONEUBj5TCoLKWIqsMhvyjO3gTiiQCbJxyDs5xZXfo/
	hXSwGg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d00egb64m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:57:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a012f8ab7so8132496d6.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 05:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773925078; x=1774529878; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MfuF/PlZWMgF3ErD0zfEEpE4i/iFIciw6YjqRozDOSI=;
        b=EPvypnVSZauC4qxBqMBZ+a6CHwUtTH6Dd6X5uXQ1QH8v+wlgPtjD4TyioThyb7X4AF
         9K2zJVX/nDSDWOSa6uBjGkTGmD2LyrE1kK0QJdfxkOLYooFQJsMCsMz3ELG3HOD6nId3
         otRwbtgDjqoWTgSX7YbNlovrriJQ22/MOmCwmbgonvqP3wi67UnW8Q3PD6Eth79nnTby
         IGswTwdEqpvCiKbTPeUG8e5uhLGrcOa8usHcNlPccdzgcOV4Ft7sZ/fTWcKw27Emfy8A
         QPaMetfGLdrmt0IajgckjP9jEmDxzkBRIkcf24qRPHh2vwwi63hHiHOXsAZiNK+IH3uQ
         UXxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773925078; x=1774529878;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MfuF/PlZWMgF3ErD0zfEEpE4i/iFIciw6YjqRozDOSI=;
        b=Gol+LBn30/4C1MZWHPLyNmsHIdIa3dyBxzOzm6RvQxlG6OCPhzW2XEa2N+D/ZvGTA+
         mW8Ro0Lb+NAsfLrRM93koOu/Ibisnl2zkOkMze9F+6BsP3yn2vhkDy3vvdhl7dn5Ldu5
         4FKeEMC50K7pfwTkQgJd1DT7bcJZq2YoBMkzhpB7YX6UO1V+5pQL2mB8jdd0xeSlQQ//
         mYwUorEENXhd30layzz5c/8iaXYnNPxOynjm/VbWFp4BcggeyhIBgfxyAhD8pSQn/DQ/
         nlPbyxN88J3cROAldJto1uERkiwhXkSplmFXvRne2xlubjS8h8KEl0fVBP9jNKXfA0NB
         IMYw==
X-Forwarded-Encrypted: i=1; AJvYcCVQV/M/gw4dTeUic+7Frb4Qdi/vCNhX3OW9YKW5C2D/aH/klojwJQRAMOGiZjSNJXzuzMwMDDUXcO3L@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/jyoU1XUJMWDxRBIG3mTyGLtXSPtBpj0BSWPQY8zmVZJXgu8l
	CCX7apsUPlGjiRmJcO3okwgNnPYPzW+nSwNqhpvCOwcKlxKZTufHtk5FUV+YZEdDlqRW5mkf3wR
	eEQz+1rBNYSXHITFe+nq4i9DAfxG1bzSI0gxf5Ly3X7a7mqC5j7/7D8DINxHlK6ie
X-Gm-Gg: ATEYQzw3GAuAupeanCI1GWp3CudZTIOyU6eAlVqFCE7cuDADWUXZXoI7AWa1EcWqg2h
	PENVJvY7pUfqz6FD8m0Y6pClQcb7IMAu/2PqSlREG4L5FjElBGjU4pNZFSMNOnOmAU1vqk2KK4x
	ypFpp/Csv74GZohvhsoR0pfsHH9Eo3bRFY9QCQCTqwlgg7g6ffElEe7i3RnMQBXI/0tW0wvFLB3
	JqXnuj9GutEejLLDfib4JCJgUatshYcwzFZKApLis37vD5dGD27E8Dc6zpmTlDH30Q9Z+nCW/iP
	YrC5d5gmvuqPtMJSz/w+JtBqOJ8h72lr0NDFMzPP0VBPTbYd381U21TLT3hNEAPWDOJhqlGhG0G
	TTHSOb3EkrVOSl03s333Qz3vCu/zySKM1RPSLkgxOwJTE8bJpVE0CJdMqjhjksExewSjxmdc0Zg
	prZu8=
X-Received: by 2002:a05:6214:f2e:b0:89c:5159:ea52 with SMTP id 6a1803df08f44-89c6b5c8893mr82541676d6.7.1773925077670;
        Thu, 19 Mar 2026 05:57:57 -0700 (PDT)
X-Received: by 2002:a05:6214:f2e:b0:89c:5159:ea52 with SMTP id 6a1803df08f44-89c6b5c8893mr82541176d6.7.1773925077104;
        Thu, 19 Mar 2026 05:57:57 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142a785sm449977466b.14.2026.03.19.05.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 05:57:56 -0700 (PDT)
Message-ID: <34c67717-0d6a-424d-be5f-0e514b71d180@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 13:57:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] clk: qcom: camcc: Add support for camera clock
 controller for Eliza
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20260317-eliza_mm_clock_controllers_v1-v1-0-4696eeda8cfb@oss.qualcomm.com>
 <20260317-eliza_mm_clock_controllers_v1-v1-6-4696eeda8cfb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260317-eliza_mm_clock_controllers_v1-v1-6-4696eeda8cfb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MMNtWcZl c=1 sm=1 tr=0 ts=69bbf2d6 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=jdZfh6YgxIVJxXzoon8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: ZwobliiG_NaVmfHBdhv8he6mmPleDcGn
X-Proofpoint-GUID: ZwobliiG_NaVmfHBdhv8he6mmPleDcGn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEwMSBTYWx0ZWRfX2U0QWl8lMrcE
 r98vplnPrEcysw4u8XxA/5lJi4QTmZbIyj7t02WgY/SwUB0gyMoi1ScAv0FAiF3C35uWQKZMcw6
 zUZBhALdxX6cz3R9o2WgRDD7p+v7+AWTJTDZmbWEJmT83/+MqNFyvzB80gMO9r5+CNpI+M4qIhM
 UZK0xBE0Q+ZpqDb92zWiGTdHUo2CK9fs+EV9SAypPiK8Oy19BxH6RyJF9sC8YfKMrJ5K+6LG+nH
 T333j3udN8h5+Q49eggE+S7ncivXSSrXvRQfiHSh5v24yr192uBtUy7jHO1aHMPnomQtI02fB8x
 jTKab3uWZBrvtqZW29LU4sn9eq0MMw06TivLdysvice6ilbmctYi8B6tvnWZi/OXDt0qCWj7XPo
 bjZrZ3XylNDSt0MWVCHPE34HC5cM+cC2PAuExxQ6ot/pMjSAbOJDUrrZktrLp07qu9Wq8erCH1D
 dW8cBL/PCi1/I5l+jmg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190101
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277779-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7B5F32CB8D3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 6:14 PM, Taniya Das wrote:
> Add support for the Camera Clock Controller (CAMCC) on the Eliza
> platform.
> 
> The CAMCC block on Eliza includes both the primary camera clock
> controller and the Camera BIST clock controller, which provides the
> functional MCLK required for camera operations.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

