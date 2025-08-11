Return-Path: <devicetree+bounces-203239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6091B207E1
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF0F52A3AD2
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D893F2D23B6;
	Mon, 11 Aug 2025 11:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H7u9EUKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71472D3726
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754911644; cv=none; b=F+bB34xLnKPNTqKdpL6J2YsTUUc79h3pNwnUMRDPHbKbF+48azpJ+7ziC+32Ae6JUsbYBMEzwbH14D5qGuKJX3VgycH+jq9C3K+Ejo1AXH+Y2nxfyVk8GmLfdVYDUnLON8B8VX6nKM3i21fKf2yG8ZxCrMQw8gQ1G1tNfQ2Emcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754911644; c=relaxed/simple;
	bh=sNmlSmfYdwXOQBv0vavVqJDC1VXG+HeHq0jxT4H3q1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T9JFVO08hEJ6yfMH3zPAKgqDRcnKDztYqSQMJryjpj49fZzgZPXMhdeYCMUNJGe1K/QWTGd5ndYzvuIL4EHJQEO+EvAMBiQUsBlkMN5Ior6lKZWhMCgdkjws/PmhhsGxxoUxtPINGTm4yMkgekDA01VNZ/j5kl0M6XWIdicZTQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H7u9EUKJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dCEj007626
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MXqAgcvzQUdwo9xEC5/EH2pfW8vHuMbHVvogbxJ9Lj4=; b=H7u9EUKJwtYhg/sN
	aChKtQBcmW1gHZ8YY7jeKtOsVpXIZOeENSn32QgfNjnOsV+nj8R2Jm6uleJcYt5K
	/jXQxIxszap0mQZObpyO0bn09Vxon9SZjyl5swci6+9NycbM6RhepiJSBztuXMVY
	zQmeAgmw2yu9MraVMg8aVynIQ9AdDFRmcQbEfkIpiY1EesOlIe2k4Npc+4o+Cf8F
	tP4xUS0reB0VQfo+r9dsPCTUL6vnSHBZdXActXtoijk5kmOtnsDEXoOm3r4j/MWk
	yGMNGye6M5+UK3T3jyI4jy9ImEn6z/ekIIC8KqO4lpY30ME4QbwY+/NsItU/sA1D
	I8mxHA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fmcs3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:27:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b07ae72350so11023831cf.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:27:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754911641; x=1755516441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MXqAgcvzQUdwo9xEC5/EH2pfW8vHuMbHVvogbxJ9Lj4=;
        b=BGPYGrrc5TY1ZSqONJtz9kQWLlG2I3dK+lk5F32bUCL9NkOT68kqxr6bvHMcBOVfIS
         icRc8QeWPvKVWS1FBq+aJ+85Ax70PPh6ijBrB2gp0D4dP1XL/Bg6JhyIfDB4w4J7RirQ
         Xxe+0eM5k8exV9bK5Wu4pwAP+MnfrgiuKkchttJqNZU7wGLhbiXhtXjlniB9GRP6bQNh
         0ua/mumb2zw2pSg1tl+KimGyMddHUoio7SiuT2+/lK9ZHW7x/QpSajHM1p1lPLTY67KZ
         PNwV0CvKmwaA51QlP50voZ/rknQSJl6or3qTgn0cihn1TfSoeBzNBy16YXZTFFO6QKY8
         BUlw==
X-Forwarded-Encrypted: i=1; AJvYcCXzepdxUIuJMXqA1QCjl6nfL00po+BryiSxtmuR5gogZNryeEIELmffUngxiuJYzCJbPvlp9r5IfyJZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwgeBS/DG1T3xCHcEeHMubNcj9rFngBHCzXj5W0pXHG71YaBIzf
	8oqInvHT69JwmFbmjvUBkrMc84p1rrqaWPe2R9FdqInuUCO3wNlssJdn4RylgOgW+MAdDzs/xxZ
	m/URuqT74bx+Z46Adt73CJ6qsv+RTlxbAfOGxsAz599n2v7+Q4349sJMR2WdBk3Ey
X-Gm-Gg: ASbGncs6PJSIK7i6Wda6UTtM15G0OVKcAXO1X5A/IIlprFv+UhCCUUFcOaVV/pO2mSl
	KsVOH52ddDtQqb0GCFDTs0NIR9lMFEiXXliJWsWRej8bYeHwLpFzaNK6u+9TYiEHt1SLnlSp1mQ
	K7FWPmDLLD8JL/RQBG9PYl5u/QuYdL2UlpNQTmIZNWC716a7kwIDPZTbkVAT9TymfaH76jAR+uj
	sX9S2TcUa0m2kuUTiFu+zR4gJlNPgXbP4Bk1P+M8+LkQVMMWfGfkLd7ILO/Zht7TMdyqAh9SNaB
	ww4m/kicDOYSyvXrs/Zz2fyFm8hHqHnbE6VuD9QKCDswWCD479bnQly/gTfFQeqxszofUOV4aou
	Zco313DPMVTOkXLbUVg==
X-Received: by 2002:ac8:7f83:0:b0:4b0:af21:80b2 with SMTP id d75a77b69052e-4b0c16c4306mr56044971cf.0.1754911640504;
        Mon, 11 Aug 2025 04:27:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFB82t9+WSwhTTLvNNNhL8Jg4BkUYV42aaK9LLPylVt42U1QY8YH8fULVeSO7VZVHjKz4kfTQ==
X-Received: by 2002:ac8:7f83:0:b0:4b0:af21:80b2 with SMTP id d75a77b69052e-4b0c16c4306mr56044781cf.0.1754911640094;
        Mon, 11 Aug 2025 04:27:20 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af919e96050sm1997444166b.0.2025.08.11.04.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:27:19 -0700 (PDT)
Message-ID: <c7be65ca-58ed-4a57-9294-8022927a15ca@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:27:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] arm64: dts: qcom: sdm632-fairphone-fp3: Add camera
 fixed regulators
To: Luca Weiss <luca@lucaweiss.eu>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250810-msm8953-cci-v1-0-e83f104cabfc@lucaweiss.eu>
 <20250810-msm8953-cci-v1-6-e83f104cabfc@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250810-msm8953-cci-v1-6-e83f104cabfc@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QOoDUTnzwE-zME7uTimBuVA5DaQ6AOEe
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=6899d39a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=dlmhaOwlAAAA:8 a=EUspDBNiAAAA:8
 a=M0Bv5317UiM6gxb-jmQA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfX0zQtB3aYqKaO
 HWJpY7SjOtm2xn+EhK4QIbDjgQzvZLWEQaVAg22ufM7f5WqacxYIzcC1aNDMy8jvFFNeNjBo6d5
 pxxc3ftikUnZwAm4GprkCXTDs2CwDMycDd1sOEUsK7ymSHA9kVExBwhWWU5bxbvpnr3Cw0KgmyY
 i23Ne7U+w5Hcz5fLhUIuRkFU2FB72AXlQr7ipfrO63den02oJv0ZRMf5In5nUx/C/+kcX9lQqre
 dnENdy2qgIErrUaMxJkBWN82naLo1pksT672KezNlm190R15LjJFEGih1IO+VAi+MJv6TFATB2g
 +F8cgh0VFb+vpfNBEy9gBzIHeJvqMCV2vrUSfD4HLs+B+0gubG3j68bPwE6zEpRdORLbI6sp/A0
 DcFcIJ5u
X-Proofpoint-ORIG-GUID: QOoDUTnzwE-zME7uTimBuVA5DaQ6AOEe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003

On 8/10/25 5:37 PM, Luca Weiss wrote:
> Add the definitions for a few fixed regulators found on the Fairphone 3.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

