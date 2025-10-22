Return-Path: <devicetree+bounces-229887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6868BFD6D7
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 58268562FFC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F9F2D46C0;
	Wed, 22 Oct 2025 16:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmDIOatO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFB72D3EF2
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151304; cv=none; b=DXHN4QGCsVg6SgzMzaH1siwbjB/vawW42ZDIv1O2IxSNXqiQF3rNL1rs39H4HGloK7mryI6tf1C2JTeylqG/LUWQ5VKQ+LidbtsswkFo3hhDXihez+8k4+n9doPe8GWyFyi10cRRbw/QZjAndicLxsEBtzyf76G1hy+nnwq1A6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151304; c=relaxed/simple;
	bh=dyBHWW2GuAfwvJ2oHoKOOFUrERxAVPMXWvg5OMsJz5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TvrbU3trxUROxjfJlfMS4nlSQJiInJNVlBwKfgHnzmmKtAv6yl4LGrYD3POOYONuqZRlyiyfSDKzoztjGc93Su1IP27V4tUS+7hAp96gmQbIc4q4DiYvugT2SE9cpNe1kCrZ3Yicfv4xPNzOxJSEZ2bS0sCsQSpdq1LdVdX6anw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmDIOatO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MBhlmU029841
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:41:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wP06UGSoKxrw415mfswkrKuCr9sYpruJ9sx77F40TyM=; b=CmDIOatOmKcwXZuh
	WrSaev0C1+B3KYa/kmaT+FKkNAAzbkD3a4BWbIO6dOlJRfF1eQCOvfCPZf4hoQMm
	7FVcimSL6b7ZVdk8rwvh8NfWD0w/bLYEltxaXNSGDxqFJ00ZYI8oEq9UxC4xPjF7
	yzuO6e2E/PPMXCraDBWv6KAgkUXNfJhLgsRJwh7tfE6rMsyDNRG3RyfhWnO9ppSR
	8+zkieSwzgK0SPKQTYshEUqq2PnHrsIfuRx6QHXN26eqXz8wuT4ALODrmHfCiRX4
	tF29jLmB8zckz/YAblYVXncWUYrZhithAIM4bKR0Gtm4B+ekyedu+i/TuTxj5JWB
	UXWieA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge5bty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:41:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e89d7946a1so4053281cf.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:41:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761151300; x=1761756100;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wP06UGSoKxrw415mfswkrKuCr9sYpruJ9sx77F40TyM=;
        b=dfiKk7kR7q1ioqbTvIA5nCwj39ReqkBw6g8A565LpvkqfNX9wi1537l8JjI52rG39K
         FaFjvwsdcdEN3pJQTsJyRIIt/xak/8Dc/fWuGqkkQXxQ4wuiGbn2slRA4x6O4FrRWQIZ
         B1ABtkXgEq+dlYRVXNWiX+kqTYn4QWAw/xLIkW25dS9srOAZ0Qp+eU6uSX49oliiT666
         dPYqh2n8A/I+GsUiNuHywaPuWiH+WJvCxIsNwZjKGTleKyH0sdFofa0FD8yBbYcK0D3M
         oHg/HsmcF5CMzrt/jQSAaJkHybE8+9EzoGyo8Is+4EDxSYwJLB8MzjagiFttlEzptv/z
         gfkw==
X-Forwarded-Encrypted: i=1; AJvYcCWhXV7k/Lih2EfM9hASE7X9KWDv4/BhmUqacs+9krOkpAvjhtqIqZhlcRpdDRM7CFyMQo8nYD0ogaRo@vger.kernel.org
X-Gm-Message-State: AOJu0YySeVHYHHAEGT5XGEVr6UEEZpD9m5pwdjyoa6aC3EUOlffEZ/bN
	Ta1Cp6tvj1SntU9dZCRX2c4rR0/skrWX73AcoJBPWk1qOY+Cs2OSlSmFlXxe3bapNmJSAnvjpqz
	yDZn7ocb+hsyxaWq0hvRZgCHn5DisFY1qBIj5oyUcOGBU8QYU9GiCtvu8dOuy2Lg/
X-Gm-Gg: ASbGnctVU5OCF0JpZB631AdEAPFiPgFYKrlMCZukzZECPVf/60ZrXr/tI9RKEwXZzcr
	MIhyefd/HzxynEiTpx+vi0XneQJrZ3ha20MpXbP6FAuUN4L/zeJRjo0JrPsQbfXwepdhAJGSQIy
	+MoJ3XRhSADCsZlbXbqTPzj1wlFjqtQa+mUQnDrtmj31KELMFHHqyLbQOLMFVIBwE463LEOefgu
	8cTd8oNRa9hcCTOTwIALfYKrXv/dnOOmBuBNDnkAnbW8wNnVmvtIVx8dOfpt31GzeYRydqbnGtw
	/MrwNyugkVhi1N7SV9jP/+ZQrjnISzm0Z6y0gogCaNF6UvtSH74VWIMJbDjb9+sp6uyijLcQk6r
	f37gFOVQmg7CS6hJhDIeydvOHimWMhzoXDQ8Ih40yivCYs3M3f6kjAai8
X-Received: by 2002:ac8:5e51:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4e89d1f94eamr180584861cf.2.1761151300438;
        Wed, 22 Oct 2025 09:41:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTPhl/gCybkXFKJAiRPLwUPk3R3ErdJqsxNwT2SQ3vNYaOe1tbdKrzeN0wa+yAMUA0I+7AGA==
X-Received: by 2002:ac8:5e51:0:b0:4ab:6e68:1186 with SMTP id d75a77b69052e-4e89d1f94eamr180584611cf.2.1761151299934;
        Wed, 22 Oct 2025 09:41:39 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6aaf93a32asm934824166b.51.2025.10.22.09.41.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:41:39 -0700 (PDT)
Message-ID: <e4cf1f77-af38-4f36-a590-dc662fcdb602@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:41:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] arch: arm64: dts: qcom: sdm845-starqltechn: fix
 max77705 interrupts
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250926-starqltechn-correct_max77705_nodes-v5-0-c6ab35165534@gmail.com>
 <20250926-starqltechn-correct_max77705_nodes-v5-2-c6ab35165534@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-starqltechn-correct_max77705_nodes-v5-2-c6ab35165534@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX2CI4Pl8UcfmN
 OtDCLpMy39b7ix0onNQjz3T24rjBTE9+g0GPbXFeWgGzPgBddAz4JKTcy3nB6stwCCGTxWwK5RI
 p+uUgxDK9qMMa6/QBzMUS4z8Zh5EPAQXuGfx/0yNpD/qynAPgXGw9KulOjmUk+QZJmyHMpJFo8r
 qJ0wIQjWu6XQEN6Beg+BrNeXvQTpsfoU82GtvJHyNO8ruwnrEddv0Jeqq1i+H7ON5URX4tyZt/z
 hH26ehJSBbJgwJnGQTah+JDl/l8obxWmLAHt5X54YX8+A6v1GwpF3dozwJiGlc+sQcNdq0L5Q1W
 KHEi31nS3W5jd2kMBqC34eo1E6vFo2pqI+atnyMpytciMn8/ObIFuJhDwCdlJ7Pk3Q5pzicaLD0
 rrdnXZ4VE615+Yd8WJr7JEmUJ/kJ3w==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f90945 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=5u1LwdSNXLj5JZSvkjkA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: OsvOILbBkY-jXdADnmapAgjNoKcadxEJ
X-Proofpoint-ORIG-GUID: OsvOILbBkY-jXdADnmapAgjNoKcadxEJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On 9/26/25 7:13 PM, Dzmitry Sankouski wrote:
> Since max77705 has a register, which indicates interrupt source, it acts
> as an interrupt controller.
> 
> Direct MAX77705's subdevices to use the IC's internal interrupt
> controller, instead of listening to every interrupt fired by the
> chip towards the host device.
> 
> Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



