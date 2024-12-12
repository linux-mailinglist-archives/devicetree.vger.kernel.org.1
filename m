Return-Path: <devicetree+bounces-130476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C709F0081
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:49:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 889ED165741
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 23:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 841281DE8AD;
	Thu, 12 Dec 2024 23:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m35H8QrU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B2C17E016
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734047380; cv=none; b=ATlz5AI2fDUZuxYtM6+S0HmMQW89LFeJk/eFMlryXXTFuZe8yCbwnWFiIpcb/TeR8KH1ZWNWRt1AJ7J5E1tOC1fAMQC3wV2Tgs78lKKFIY0Buf7YyCVetiSntZwewx6sRl8OeWz2BsRunY8qGWOsRXKuZvFC1wlIUYYR1U8tNls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734047380; c=relaxed/simple;
	bh=URBmYjMmyDex9nMoXMnWsSAzcfTL+mwozsx0zYAHLvs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pZhzkIMCqdOFRQk3QPaR7BKbUxu45qXtaFyXWujTkVe98swk9rT76CnqSekBlHNNKbhyrn5flssk5Qq63KrUk/+YOn11914dc0+z3AYgquzskgmx0JP63NSjqS71L/bXyHQ0fX81sQ0CpicvmrzdBaUGXBeZy53v7Q818scoyBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m35H8QrU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCIColU022917
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0QLS2uYSHAYK/Fhp2TxaPsUSttT816uFB65LOIdQ0E=; b=m35H8QrU57mQjKTw
	tEwlyuGsAGqFlHMJdYkyKA8MGwn6Uc8p209Ato8j2vMSRX93VGTId1z9C9n8rDye
	BWRmMxe16C6OET9lB49XxcEsf8keg0acK0A+uwfS+GvGqxz3NaVNqvqBPI8hOTr2
	kvW1KfnoClzxaaFIgXipPRkA+GtaMjvmur40G9tC9A0z0qUU28KrVTLPI1noMCAY
	cZZznbvVjhvH182PgMi8/2nz82d9tOVGqpj/62BRmnSUlj+682aCum9EZ/dmWhbr
	jV7H/dD1+rw+onnfbdVtLuMSKBf1uuMy/WWL2Vl4eiHy7VcwF570AXCMsY0Jqomh
	lwRGBA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43g4wn8n4q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 23:49:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6ee03d7d9so4736385a.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 15:49:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734047376; x=1734652176;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L0QLS2uYSHAYK/Fhp2TxaPsUSttT816uFB65LOIdQ0E=;
        b=hJ/LKx9sNLHBGx5kl7TdrbhZeSfLyXAteypzP2I5E4kzjkSPJ36XGdFwxRq8eTmGcY
         WBJsRcMWEX9oL/IGXHkT314k3OlszVDdM5GVR440YK8zZVJEsxp1sEX+24PnMPmMvCkp
         BKWuYDnKJ24eOrYxgD87U1LrCw59Y0faFXIGvb8EpJOrGb/6TyyQmCAbEubSxrylcxVB
         9GZWyJGL1DS8wSSIZYsuAuY4c3qArTcCkaaKtqXpEexMto0P37GnBkMyyu6px9ZxgPPb
         0/4gd2zOkSANGAj2EKcFfQQnPo58qg14U4hT4x9EGh2BtcMWJwFx5K+so8bjXjf4u7cB
         4Jsw==
X-Forwarded-Encrypted: i=1; AJvYcCWVCoPqGFBH3B9lki8kQTVc2llwfp9dtEDOmxnwFisMEV37HEYK8TQDaUb/wzAQcq+DnWgoGsJozCl0@vger.kernel.org
X-Gm-Message-State: AOJu0YytrrDr3rXxSPq4m4b0NmiZjSqABgQTX8/kE33P0cBEKvayxs95
	EY8meS0zjpjWSQx544ZH2IUNXxCC5OqIcgqGruLOpz3IHSAu70hbaI2g/G9JKlIl4llRKd3q6SW
	HXuJnLK794SL365qxWFIU/mwF5JlBIT39oJdyudbURb26xpKiAYEt0xsohS59
X-Gm-Gg: ASbGncu/egsMz6vTRh74BW0h5Nf0QojbGEOilebkFSpsYz9BG6I7QJ51ZAf0baQl77/
	1hbUySO/hLCJ8gxcmDitd3KhiVu0sWA212tj9NqkyxgOa77se1KU989Jp+XdNhdKjntBf+Z6bxZ
	C+JvtGKZH5P4sugYUk0fcsKct1OIfGI+I3L2RPe4o5wRSSDXwEE2uo31rrIS+JwRdPHSWEBKuk8
	8L50vOni8gfZjQqUbimCUIREu8p3GwNBSNvQd4RUs/uofoA5ckQPC0+V0yTeRJnikpG75WATPuu
	XzPed/qfmRg6x7IuAdJMPgnPSF0ycsDVv7dC
X-Received: by 2002:a05:622a:102:b0:467:61c1:df39 with SMTP id d75a77b69052e-467a57f68f6mr3227681cf.11.1734047376651;
        Thu, 12 Dec 2024 15:49:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5AzZKeD73oYNDuNinX77d5Sgi2yqleUPr1NZ/mRZDEOxdKMTgqhc/82eGWxfy6eHLUiy+/Q==
X-Received: by 2002:a05:622a:102:b0:467:61c1:df39 with SMTP id d75a77b69052e-467a57f68f6mr3227401cf.11.1734047376274;
        Thu, 12 Dec 2024 15:49:36 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6801060e4sm688426066b.158.2024.12.12.15.49.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 15:49:35 -0800 (PST)
Message-ID: <da7590e7-bb18-4983-9d73-fc10d42c740a@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 00:49:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] arm64: dts: qcom: x1e80100-microsoft-romulus: Fix USB
 QMP PHY supplies
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>, Marc Zyngier <maz@kernel.org>,
        Xilin Wu <wuxilin123@gmail.com>, Abel Vesa <abel.vesa@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
References: <20241210-x1e80100-usb-qmp-supply-fix-v1-0-0adda5d30bbd@linaro.org>
 <20241210-x1e80100-usb-qmp-supply-fix-v1-7-0adda5d30bbd@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241210-x1e80100-usb-qmp-supply-fix-v1-7-0adda5d30bbd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: gGrzrAjM2WOhL88e1n03XpSUmreeUzle
X-Proofpoint-GUID: gGrzrAjM2WOhL88e1n03XpSUmreeUzle
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=819 spamscore=0
 mlxscore=0 clxscore=1015 adultscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412120171

On 10.12.2024 10:07 AM, Stephan Gerhold wrote:
> On the X1E80100 CRD, &vreg_l3e_1p2 only powers &usb_mp_qmpphy0/1
> (i.e. USBSS_3 and USBSS_4). The QMP PHYs for USB_0, USB_1 and USB_2
> are actually powered by &vreg_l2j_1p2.
> 
> Since x1e80100-microsoft-romulus mostly just mirrors the power supplies
> from the x1e80100-crd device tree, assume that the fix also applies here.
> 
> Cc: stable@vger.kernel.org
> Fixes: 09d77be56093 ("arm64: dts: qcom: Add support for X1-based Surface Laptop 7 devices")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

I'm just going to assume these are true.. Can't really cut power to
these to test as they drive many more things

Konrad

