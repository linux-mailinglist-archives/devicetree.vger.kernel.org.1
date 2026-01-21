Return-Path: <devicetree+bounces-257893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CO1BHgm2cGndZAAAu9opvQ
	(envelope-from <devicetree+bounces-257893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:18:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E73B55E2B
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7521A623C60
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:13:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD53421EFC;
	Wed, 21 Jan 2026 11:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DegJO6YG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B3dh4C18"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103543ECBFF
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768993985; cv=none; b=rkZNRY9Mcea2UN/RRcbBw7RPPj5wuK6csVE9dE+vz69dGiCmBuhWaNEi2VHPEoFD+t/b9xAi+Bws6xGm1E5pGsFcFm0rztPt9TUTBohecvNUTU261bZL/IuVvuCau5MCXYrrrQsi8OeYJKkm0arAbqfqQZwYRgLOrYh5IVczyk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768993985; c=relaxed/simple;
	bh=W82zO5p1N8qPAJFgSgyiE4He0afarAefa2tFtiQzfpQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pYnIeh6VrU4oDa84iOpvSKKVW8PIYhbRBLDlgOO96h/BSMTNNI7QN77vJsUypU9sHebFEbFbMRVtzag/bEaCBlJ4vXn8yn6OcuM250oNCVQC5udeAwPrpoko5zdgbSSxaCTWoKky8Ff4X06ThoWfIoLlHq/UoC9E0G4Knk1kVw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DegJO6YG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B3dh4C18; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9aXNq825994
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xu01O4uXDlSEGNGXJLTTg5rEF5Hdh/2ZsLcSSMpmGZ4=; b=DegJO6YGfHgx/fv5
	uzo/fNb0/Kk8VK7N/zSFyOK3B/AWYDHRg1GNcqYXADqBZXkF7uH4YtQz2VzUsGc5
	O0Uwb5omNjzcCiHomKLQpmd6SSSHHqyfZRILs8JxwBeE+SbkhflNFYw/yeYHM7lK
	MJU5VcB6V40WT23NvadPJP9WZN67L7PmTYuZZm4J3TXzWgQcZtntNtwtcsbZtFHv
	N6KtPzEWtCeD35+19CC/eYvAk0eCyKvZLW8Xz4H5DlUUmoJXOVEo1NtyXT5Lyf2s
	thoPbRj+SG5LV5BwthYA0VYek0/jmV4JA4ZkAo7HpsDOw2huXmYC2fDlYIUeX+Us
	ubZGIA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bte5e3n7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:13:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a182d4e1so155376085a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:13:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768993982; x=1769598782; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xu01O4uXDlSEGNGXJLTTg5rEF5Hdh/2ZsLcSSMpmGZ4=;
        b=B3dh4C18TYu9IZRcyY5nWuiiVkBIIFKVzof7QXTo3x22Tmq3J6ImYqoMPrkB6Jk8yI
         caEOJ31w5nLXXd/QZfYsqSe/AYaPfcgiRTpkG0RLNnKHc4mbWnfL0mxddMLcWNb9EK2A
         McFrhEq8YNmuK0Q4qLEvlkb/L62d5tDCWGmFGnagv5OX59PQtgpSbcag8XAu7T/Y9d9A
         J3jmpioA3enaKFkUwgNd+POxPzC/ZesKq0GRt3IHjMOnTJmgppw9y0E9/AFJ8dPJd4PX
         csEoOIW4E1aAeJ8vDY3uwKpJB1IlHa3XEE5VSwYrBnGCDAyn+6c0kF/580b0PR59Q19N
         IHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768993982; x=1769598782;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xu01O4uXDlSEGNGXJLTTg5rEF5Hdh/2ZsLcSSMpmGZ4=;
        b=Zdb95FygUloL/YaCJnLstjFVzT7YwmqeiGl5uQBuDVL72UhIxNuewgq3vYmyrO4x59
         rhiILVapVyPyEohMIjkDgbx8WRvtU8mKpJyhAwNgzVl79lf07yCeQtPVpgN4ILQex2Ms
         KEEFg2CvS6TlAhrFxPI5FwuvXj08xbTMFsbSaacg1sNUVQ8zFbMaSgoT+6WDY3OflRa7
         Zs50sb9Xthb0WdZY5eeV1ydwz9xGerB+0lLmbgYv33Alm2zEAfwPRUK18r6BfNZ3mapp
         fiF8HGa2/jcZAgOhdo0mdLa3PqRmrvoQ+5WB5tjJ5WuYVbiVwpcAdH0yK4ZuEeB/ebV2
         eFKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt1uWb1KX42o2q7tCMW/4R4t/rxiIEY1KJ4w5arnzq0p0PbvTIWVG1ixmnuAQANrU5+arPAJoGbSap@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4FwCCflj76hAm4db6vcbBY06fboyfBcDaEwN3HU1WQWvxmhCk
	Rvg0C8aTkOqgnnKROGZs+X6nj712tpIqS6kqK5+ZJGL9o37DY1ld30USIxv77BSDS34j+opUt0Q
	atHJB2yt3H3Y2Arz9qRgTU+UQzzMHLRGuDedqP2F1QSNFNbdTUrudW8gEX98G2kN0
X-Gm-Gg: AZuq6aLw0FA4iO3ml9fVPq27hvXp/tE2CHpXpGCwC0ejiHs8IKS45YpOIaZhDgKSubE
	8Qawm8liuIhwosKnYusA0ASBtvtAy8+gweiPUqd2D3tww6xDOq5tH8lRDFneE8xgmRsfc1pZTqk
	KGGHGn/bc3u7vorSIJaRpMsBJI9hMEzSSJGD5gCeYG7RSFxdxG6g0Ur2nU0bNONsfjeyzRnfAhI
	rwWF9twdEhCdncQtw22GOhXCWE+SeUDYXKr1G+wtxF9BbUyH1AcuwImUuEOV/dQSJDV9vtaUJor
	/qVFXrpdMMN6gIcf7v19/thTflvWiBahaN6QJFTgr6dua3fmpV29jP4oAIjtOgIoaQlDhfTbd/D
	bgSDgjJv4QOhAxf1l7/4Q+i11Kq5Ysn4d+HxgUeRlv/56OrDqgShLLkP7nBlBz2Ad1kU=
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr625886985a.6.1768993982485;
        Wed, 21 Jan 2026 03:13:02 -0800 (PST)
X-Received: by 2002:a05:620a:690e:b0:8c0:c999:df5a with SMTP id af79cd13be357-8c6ca431652mr625884685a.6.1768993981964;
        Wed, 21 Jan 2026 03:13:01 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6580781b7f9sm2482875a12.17.2026.01.21.03.12.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:13:01 -0800 (PST)
Message-ID: <4ace788b-6664-4ea4-a24f-f6a5a2c89986@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:12:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] pinctrl: qcom: Add Eliza pinctrl driver
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260120-eliza-pinctrl-v1-0-b31c3f85a5d5@oss.qualcomm.com>
 <20260120-eliza-pinctrl-v1-2-b31c3f85a5d5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120-eliza-pinctrl-v1-2-b31c3f85a5d5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=BKa+bVQG c=1 sm=1 tr=0 ts=6970b4bf cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KyTfmqBV2Hnfq8PbPJsA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: pgGdRWWnO2rUMlASfwz4r7QzTrB9JxZc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5NCBTYWx0ZWRfX4HPy6rduzurS
 ZegUlixbxN4Va3eI+ZsW+aXHsDo63zAxa/UAoCYhgsUnPRzJALJi3i2vEYhHYPDfAw8MDRrYE7r
 Qx0GJ88kojLiTxuFDfDXadhJu6HoqRBCSTVlNzS8xsJJ6YJE5OdnRamoJHq5YU8EPNEE2lh0ehJ
 TfXGGIwuLmDLWBAsqweb+E8MoJE70u0wJ8OWU0jogIrIXgWqL14V2tAwwTqQz1asMx7oCgPmcDn
 F0RgcIX6I0Rvt+RtsG5mSC/M5UhVRn6YGL0k+T45kD/f/HHMxlWat0xRaSlAq/eSMk+cjA+1sUE
 mLbdpoxgpfm7sPXcDSSb4Gk9f/JCix+sRVWT1GQthfxv4NJweqIooZaqwOtoJ8LcWkW6RJTGoRw
 7pRc/xQlPxEKVFPDJ6DhZCgfAAeDF3WGrDHQFEYcG4FXRzDTLftA37NzrVGADoIG0mYFDUTVLSj
 s2zGJoPYGOcKvQKZt5Q==
X-Proofpoint-GUID: pgGdRWWnO2rUMlASfwz4r7QzTrB9JxZc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210094
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-257893-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1E73B55E2B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 10:56 AM, Abel Vesa wrote:
> Add pinctrl driver for TLMM block found in the Eliza SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


