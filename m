Return-Path: <devicetree+bounces-132817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 250869F839A
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 19:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79EE2167866
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 18:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15DC31A7044;
	Thu, 19 Dec 2024 18:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="STJER8WZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9481A2632
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734634683; cv=none; b=r094e8hahcVTQrNpgNJUp/StmpYm8gLGhH7U9CkDOgLsU8s4koYmkH1zLU9kVS5b5V26yK/gAYLEPimZhqrS8qDQeQNy4fLWhNaEGrfEu9kLhJbjk3tU+H1NlfRuS60jo/WlzGnoXR61CEk0bHKDoVubr/TuNF5nx6MpfLCAB1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734634683; c=relaxed/simple;
	bh=zpE/IwkIKQy9Kprf1R8oiWxam3sKYFsPPtlhOYQmHXo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uWW2IYbU7droiMq18L8rtNkmUt4c5oYbXUXaAshY8USdN+ZYDsCDGCZLQ07Ngccn/TletUVugJ4Sn4d8OhtacTzeSdyjvXfP7CVUIOmg85JF/wf2qtrSy/OsLI/bO0gi4q6GPbM9S0EL8MSSuvctatdXrTxY3RvntdvvnUg8fAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=STJER8WZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJGInbI005795
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BoBfjKJGGBGP1QIp7p9Tygch719/YYaqks4CRbMKW+M=; b=STJER8WZlvshyQnL
	1eM4PRuI+IAujdc4ubqMz+Mg81F0VWJaCm5Zr/PyTZQ8kp3HPbSXEzta0JeDJ06Z
	IGrgN4EKGb6rAFGOSw9m9HZ+pVgzDzAGXsOB1BtFbVUTpUBO/1F20tbaDdSPhdiC
	heJCw2sFcjjSM7cxImLVeMMUlcLqN91tUDUJTVnST1Q6B6jgH2+z8mbALi40fc7l
	utL5uA36r6PwZxNTxNgHXrhqreKz9D4pVtDIzcuNeyZya9CJhEeUUMkoPHfLppLG
	J7nWRfvVTJ3ashJmzUWis+wL+S5rwKQTk+oJbr6yjVwk3CmPNBJnb/YPEKLoD8Wc
	xfeLrA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mpw60d5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 18:58:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a0d7fb9fso2667971cf.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 10:58:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734634679; x=1735239479;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BoBfjKJGGBGP1QIp7p9Tygch719/YYaqks4CRbMKW+M=;
        b=ELh+GVeP+Q1mciH1kcaOHQ27+NV997q+lmtPOiJYl7frijPLharnc8XOI3aZgM0XCc
         8M+aWTYZQ0KHA9pJhVWOXCCzZ35VSKRBK2ztAhdxvRPK5J+jZiOx8q5BBeRN6xrxdzOn
         JMuV5Vumrq7tVqzfEhwEcaLZkziXSjvv57Sp5fA7tYG5HFCyiyLIzJEGzDDzw9dlk4cy
         wu8Ys+xZKonIpVgd6FK3/pgSiQSuLkdFlyVNr3RJkBeOkUsQw/TesVKV/vtdCpbTRjqF
         hA3644Vh1lKpaHtzb/6c92oo0FWoTNeGLqpMi3SULmD5MbNhpOB8AXFZsAX6Pjzw+ZTP
         +cWg==
X-Forwarded-Encrypted: i=1; AJvYcCXcyHDIq1+LOGhJSltoEpPXyRgzhmbo0YmqAhlS6loRG5ENXRigmSpCjDREJEVh7t+r9xhL2QCd+RFF@vger.kernel.org
X-Gm-Message-State: AOJu0YzS3TYm0dL+nQIt3/mrexspcGa8aikIntRorPs2sqUzKO6JVgHH
	Edu7RA2tXs6d4OX8OdmwSDlTDlyQrICyrjTILLzn1KvkUqgeQL50QBT/THADSrbEu7XSibaeGRG
	fYtjUrCvCTcJJgo5Yp8gfp4Z8u9xURpoKrLGsen0cHBxCc5/xcRIKU8v570Vc
X-Gm-Gg: ASbGncshqQNUeP8hu2VY4png/jzeJ7gMr/K5yedPwLkLsTBBLbkZlOL+HXjU/JG7Vel
	cLcu0pJLeC4aPGyQbbYzf7S4RWmtLZohGUwW794lKAGPieHN8VPYL2noaCtr/MYA97UWvFb3PXa
	Cx4Wu/9ViATaIknsV2ryDsn82JYGg9bhoiGcdr70pV3a5PRTdV2Vx7bmIHi4CH9wGE9P8MubyZO
	BCMcrdPl5OUPeI0seOduOM8bbmlefkM18hlQHbLTkWrfjqIMqKNv5TTF2tyouMFiL6J/tTTfGD7
	96bY1co4hj7ThsZ4ErfYn3DD9Ui8xPJPwFc=
X-Received: by 2002:ac8:5810:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-46a4a8eb7e3mr585811cf.8.1734634679406;
        Thu, 19 Dec 2024 10:57:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGzzzhRK/H5Q4ZYWYihAa5ttJ5U9egSrme2IPWXLvYMtQK/O0ViHiGIF3Unj/8RkkxSajfAFQ==
X-Received: by 2002:ac8:5810:0:b0:467:613d:c9bb with SMTP id d75a77b69052e-46a4a8eb7e3mr585581cf.8.1734634678955;
        Thu, 19 Dec 2024 10:57:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06f847sm91464366b.202.2024.12.19.10.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 10:57:58 -0800 (PST)
Message-ID: <bb04811b-dcdf-4c95-9999-b1dff7abadd7@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 19:57:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] pinctrl: qcom: correct the ngpios entry for QCS615
To: Lijuan Gao <quic_lijuang@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jingyi Wang <quic_jingyw@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241219-correct_gpio_ranges-v2-0-19af8588dbd0@quicinc.com>
 <20241219-correct_gpio_ranges-v2-3-19af8588dbd0@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241219-correct_gpio_ranges-v2-3-19af8588dbd0@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: HY5WBV2mvhz9pzbgo748h-dxARdkhNLG
X-Proofpoint-GUID: HY5WBV2mvhz9pzbgo748h-dxARdkhNLG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=832
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 mlxscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412190150

On 19.12.2024 8:59 AM, Lijuan Gao wrote:
> Correct the ngpios entry to account for the UFS_RESET pin being exported
> as a GPIO in addition to the real GPIOs, allowing the UFS driver to toggle
> it.
> 
> Fixes: b698f36a9d40 ("pinctrl: qcom: add the tlmm driver for QCS615 platform")
> Signed-off-by: Lijuan Gao <quic_lijuang@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

