Return-Path: <devicetree+bounces-131011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0479F1B31
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 01:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50E80188EF07
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:09:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F28FE1F193A;
	Fri, 13 Dec 2024 23:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MYNvWB6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4B81F130A
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734134267; cv=none; b=X6GP9Fr5JyH6hmqXrvbAOgxiZIbvGvOmknhXKM6zowfb0KxRs5nxMuX7Ge/d7WhaBHAjKWjv3jkWkmshHlTnI/gXhZI5+Fo4dhgYSf0I6wAS/bwAyMKDJfhL/aoM46IEmNNxI4FNY0+AMCGskIcsqCGgJMcYilhRN3B5ag4c0yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734134267; c=relaxed/simple;
	bh=LYdPQGswu8DVIF+KYEYRGj/aA+V4ms+9iQMh2rqG9ds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KBNNnXH2KdzqeSfz6NZafAGKsOiRhIRBcHfQpc7dnGqxdCmfyNA37RVlbl+llVqSoriG/dv4rtSVxrJkky4XR8HDqVzrldmTbG0cscR9bJtO/VxxS0oaDS8tVMJ17xLXc0LSYI/pSTMbaVM6tfKI8IY/X8aWYXRviz3eU8Skwok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MYNvWB6p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9pVQ9030541
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:57:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n+UpY+SzgpLuXHX5fnR2cKEgGvVPipA5R3mDTkxv6gI=; b=MYNvWB6pqzA8YBtB
	U80Hl76jUF9GzAkU861jk1vHXCRQRGEX0Gup3B80NtMqA15PnzZtKonWPnDxxa9p
	WBvaakAOGAP3PHUh3ucFIaVhNtLSDcO3bOhp2GTe02FjqppNSkOhK0rTccxHWfiC
	xAjreDceXuGIICi2dDGKh7nGtf8mUqnwVLmIBDMakrAes8fykOTY3V91MIG3QM8r
	Z27cr2U8JzXU3uNR2j5bQnoF8EVgvR0C7erAxPZX+l+2ejYEVtKBj7G+3Zk+/Rig
	q3GtxHiltpHPShWsuWduZhNILVFu7F17M9xKRc0gIXlTyv3FOahcFxWARwOyukCA
	ZOuHdg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fwgen9fa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:57:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a437e5feso3680311cf.0
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:57:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734134263; x=1734739063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n+UpY+SzgpLuXHX5fnR2cKEgGvVPipA5R3mDTkxv6gI=;
        b=Kx1LvnCPMMqFaFLKGOm0C/lCcXyyv7zcenl+bClovPVqKdubeXOokkvyhWzAaSVIK+
         Lbqgx04mInr35Zy/3wtN1zB4GWNGzaKh1dx8l4jP1AwiuSmHEf+eyCgC1PabwLdLKCZH
         TO5V0ApdGo5cIEUlv82Fd5QWpJkt1NdUr4Ztswqic2YOV3npgfm+CNwV0aakUzjqC6YF
         o9Oy1mUqKIh9gB3SkkA1l8EljbJY6dRIPRFsfEtnbmx7MKES2pZuaLNxQtGV16aksQgK
         7nY6sqC7xARgTLTHBC+YkoBJ9OCw4by4NfhAM5E44JOnTy4bIphG1vbGryGFAPBGhBGx
         he6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdsmHG0YMYbQSKmAueZIlERP+UtUcdAJ55GIZ6qn4E5oTUy3eAf/nJApgkQj84sCHFbCLyypHwbdKT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3cWqBfLIJv0haSjwaGvzyPXLKTfC/igUK7Fh1QsebpgiBosve
	RBYJUxVDL9efBSHAspLrPp4QMMuHl5cMQ33NkFv8bS48MyKKFVdCbXbEtLyh0QCG2IEW34cxWu5
	4m92CEq/diN3UbjkYN3s/84BWXU0Sa7ByAjhhcuXZgj3grM8cqkK1tuhDEA3l
X-Gm-Gg: ASbGnctdkMSma93RQPLrFOjvJ+1mxDYYaUb9BU308TJDeI2syHtTUD9RlbYLiIZAj/y
	UNlv4adYXFLU8Um/SsjtbKoWe7ugToRU3/8eralOV6TLexuKQEVwQhSOkpm5segIo0Q31641Pg7
	EaQ7qcYj+7iUjlQrmpg1g/tz+K5bIkh4+2ScIX/3Sm5ngzG5F3nv90s92xKadn2aeOe55Vxbxix
	k38O/VJgHCJEh2BHW0w8gSXwwiKR3emt0pSYpGXH7MFjNBASnx9iy2m8WRCMMy6wNXljS4QKeUD
	P7sky3l1nDz/nPHUqqoZLJvnjCgp12mdjSo=
X-Received: by 2002:ac8:7dd3:0:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-467a5802b48mr30420361cf.12.1734134263201;
        Fri, 13 Dec 2024 15:57:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHdf07u75lgXuB8ZdoFrHC5spOJU69BJNvJrmuLa08Zpi6Yb/7k7QK1DNmiKZHesJkLk+XaRA==
X-Received: by 2002:ac8:7dd3:0:b0:460:ab1b:5ab7 with SMTP id d75a77b69052e-467a5802b48mr30420191cf.12.1734134262883;
        Fri, 13 Dec 2024 15:57:42 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d652ae11e2sm329712a12.39.2024.12.13.15.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:57:41 -0800 (PST)
Message-ID: <db6ec08a-7810-4624-92b1-ea922a2ee103@oss.qualcomm.com>
Date: Sat, 14 Dec 2024 00:57:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 09/14] arm64: dts: qcom: sdm845-starqltechn: add
 max77705 PMIC
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241209-starqltechn_integration_upstream-v8-0-ec604481d691@gmail.com>
 <20241209-starqltechn_integration_upstream-v8-9-ec604481d691@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-starqltechn_integration_upstream-v8-9-ec604481d691@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: VHqzz-NkcOZw7P3YcfVWW3JAPy-Mgy9T
X-Proofpoint-ORIG-GUID: VHqzz-NkcOZw7P3YcfVWW3JAPy-Mgy9T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 mlxlogscore=697 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130171

On 9.12.2024 1:09 PM, Dzmitry Sankouski wrote:
> Add support for max77705 MFD device. Supported sub-devices:
>  charger, fuelgauge, haptic, led
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

