Return-Path: <devicetree+bounces-118669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA1A9BB30E
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:23:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2DBF285307
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A38871D54F7;
	Mon,  4 Nov 2024 11:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxVVPBqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340911D517E
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730718776; cv=none; b=Wp6qCBE48o6x//j7xh3wbGmPm1VrbKRQWgajc7Dwe25aZEcm23crwi9adfqmoASCz14jBBoP6XwqTH7EVTfeuX0iMaXbwzpvd8T+9Sq3vZHc5+ejtoWHoeMb8ByG/f8A2AW6lUhvr0w81XQBKsr5mII9Zrjr7sABF6K2heIz2qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730718776; c=relaxed/simple;
	bh=GfTqS8OGtgvdq4CghxVn86HK6W2OBHBs1c4oIr7MYHI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ObrXqno9EwnPxq40U1yDeisPusZ1/gWJrY87422TGHo1H8LQSIBpe3c/tVarVQL4KvRop5iIxYXFjKIBEZFxX1q/xrWnzdrYA1zHZFzO0DWZJUFArKe9VGZ/mNUiHt/gXbSkCG46183OcWZt/n4OvSxCyVJ06S2IT8Wl0kzNSEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxVVPBqX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A3NPRnV025059
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 11:12:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FkrN5aPzH8cFJEUSM1S5b0+HOoTa6/UxeCk1GA3RQ9E=; b=cxVVPBqXDuq7NWL+
	K0ZmgTrC/lj+ijuwzxBWw59YbYsxfcyXoO4/cpsxY6E5KqxeqJV6REBqI1dMCVj0
	nyIBbRafDqPM7sopTLCJJcryagtohr8oQ+QT059X6poX5vCs+ngT09h+DW4JIyRu
	tFXrnb1xPulcBuYOK9ZRd9BPeljahCv1uFUEeofR7hidLsF7tdrzB6I/gZAKMs3c
	pRZsV3ERVhL4vcYbk76TP0LIz486cGWKUU5vuTVZwyCsmBsSHl5Vj1H+pivihBCY
	0dRGCUrzvWqbI3YnM50T3U1gIodUQzMIPpk0LQgtvhP/9R8DH+sP+n7fB0sKhrVP
	6RGZYA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd8hbuq9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:12:54 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4608a761cb2so9773311cf.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:12:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730718773; x=1731323573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FkrN5aPzH8cFJEUSM1S5b0+HOoTa6/UxeCk1GA3RQ9E=;
        b=qIBWnfTJUcOUPzwMvE4i3eyuLeOns/kc0h4400lAyvxfh8AXILyshft/xa5ERbxpaF
         70/70SqVyp0n5YvmTuZ6birAoa7rsLFzcOr0Y2QXH3STPpv0jZm5oLYDg8YJrSbtIh8z
         LEEQnimGb5HepCDEjXtkFll/gcdOIDKk8QXk/0kGGO1zXKsSBM+MjkY+hHzLFslQeF7G
         yqsxMUtxVi/bYVDR+J0PiJTVHHmFzeXoZmsM6yd2VIih7vYC3olsdkQa9teicaw6nTQX
         J/ShQQ7iTCkTbVRstwDoIQ2MomBh6Ny4kiK5we31FaOybpPW5Hq/iK50Hnp/Gi3F3KeK
         80Kg==
X-Forwarded-Encrypted: i=1; AJvYcCUeFw0EwEo9OjvGiUkjDCd/cJz0e8w+eft8SXxuLdZ4B88KYnfkWA0U+7sOJ6gc1cIQ6c64yLpeCDII@vger.kernel.org
X-Gm-Message-State: AOJu0YzjmZOrn3eo/UTbmBcu+GDZdXhZ9bD7Hq/qy5/Dy6RiE5+zOViM
	M5k6qqOnn8v5HEVpppLUhV2FHd31tlBbBsEzm4oY3o+acq85HeAKutbORyMrvcOA2mIZTFOkvt6
	yrcUAwVrBoKFKKr+cC7VHZMEPOg6VNaIA+5i+A7XVSpxeAjz+O6waICqEzedL
X-Received: by 2002:a05:620a:17ab:b0:7b1:43b3:8189 with SMTP id af79cd13be357-7b193f68cf5mr2130263585a.12.1730718772737;
        Mon, 04 Nov 2024 03:12:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1kLsLhTw1eCaFhwc75OEkkLjLtmAZaNU8WNIlpyHgnRFt+2XGunT7R8lTybD+GT5231O6HQ==
X-Received: by 2002:a05:620a:17ab:b0:7b1:43b3:8189 with SMTP id af79cd13be357-7b193f68cf5mr2130260885a.12.1730718772318;
        Mon, 04 Nov 2024 03:12:52 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565e08d0sm536708066b.115.2024.11.04.03.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 03:12:51 -0800 (PST)
Message-ID: <e9d5e5fb-a656-46f4-9f5e-c6092729709c@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 12:12:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] arm64: dts: qcom: sm6115: add apr and its services
To: Alexey Klimov <alexey.klimov@linaro.org>, linux-sound@vger.kernel.org,
        srinivas.kandagatla@linaro.org, broonie@kernel.org
Cc: lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
        krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org,
        linux-kernel@vger.kernel.org, a39.skl@gmail.com
References: <20241101005925.186696-1-alexey.klimov@linaro.org>
 <20241101005925.186696-3-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241101005925.186696-3-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lFCU-UcXWyInz5ppbEWvxbCUW_sXdwPP
X-Proofpoint-GUID: lFCU-UcXWyInz5ppbEWvxbCUW_sXdwPP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 clxscore=1015 mlxscore=0 impostorscore=0
 bulkscore=0 mlxlogscore=488 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2411040098

On 1.11.2024 1:59 AM, Alexey Klimov wrote:
> Add apr (asynchronous packet router) node and its associated services
> required to enable audio on QRB4210 RB2 platform.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

