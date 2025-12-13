Return-Path: <devicetree+bounces-246231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7ECBA477
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 05:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DF6103010E79
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 04:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B4FD299948;
	Sat, 13 Dec 2025 04:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U6YYH7vH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kqq2iV0n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF8EB8635D
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 04:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765598706; cv=none; b=X2DQMFDrNK+BFNbp3ADOO/yVRsHjUHBmWP+r0OGlsXuezNUlwRRbBVZDFRC9Cnp4L79YpHmEspWWnSb69ppHfAA6WryoBg8JdvRkR5JPiJuBtnqdZApUL/n4mha+7FdN7v9qyFRFJ6lA1dJ0GHWHNiNanTGcaODEhUGYistkEHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765598706; c=relaxed/simple;
	bh=8pkXydEVxE7O2MxpAcZifL/kdWfTrY2IfgxnBwUMtqY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c/t/2jbkasq+fxwJ8eR24Nowpa8WKDjQkGDzLwpQLJQI+nqIJUGmi9qrpQUAItSeuRInTrZKDkj25W5tE426C3OaQg+7408QISxm6FNVDTSqGWRFc6xD6iIhRwEGnp9wrZ8PsVLm9CZxfGiLvCNZETy0QZBkYjCsbKPA8bSK8zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U6YYH7vH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kqq2iV0n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BD0hXxV1562641
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 04:05:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XwQpGfSBXmqEfWH+1QANb8m+
	xJQRzjaf4mWTlCFxoyk=; b=U6YYH7vHbMus7uw8eSeIZ9XynXpfYkKMkgfgEmkq
	uE2jEx8rf3d4jKPuNfGitIiAf6yZBlsByUqLLO5oeRvuAbdiKvRVOu0LqaYbgrTA
	SNyv2FeilY/uesBJebjshoBala6pVlCfWKb9L0SBYQfov8+LrsKvtobAccGpCNQV
	XnwRScn/4ugkvTvS39UcGdhHQaPwpLyupcxoToIk+SkX2lskkKhmAZQbufESezEe
	0oOcvHQskIA/znaNuySBBvZEXMWzq6lFEE5QcYZg4Q8oQGXn6UnMX0zx2ZSL879B
	pUtHsUXgTmMr61opgQYehe7ALk0tbAdnr9JEMhJWQPOYmw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b0wuf876d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 04:05:02 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5dda0c4a160so1200202137.2
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 20:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765598702; x=1766203502; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XwQpGfSBXmqEfWH+1QANb8m+xJQRzjaf4mWTlCFxoyk=;
        b=Kqq2iV0nXecQnVH8uVIcaO/0c1MOWANkWBv3UGLRt5MWwBTnSZC+DDNPRd7YQDH6HA
         0dPIy/mnVd01UibyKG0IMfh4WdsQpOylM9Wr1S5JhspMKAMRoCvbAEhFa8F73ppu5Zw3
         dmtqJNbgvQJxR83ZPE57Dj4WZvu+yaHEPMHa/wQPblU37GgKFWBzuHKFbflnEadU4Qug
         X1V4n+zlDQmHMtO8VJ+pdb70pfUTzfnvuf3dcIlbIRibuxkDle5IE6/8GXu2zvgGKeIn
         GhletvUtsiOknvycAHYB3HsyBjMIeiZ7dIikgvQRnTUNimMvxyCWZY1wzyCzAh7NwcRc
         hdbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765598702; x=1766203502;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XwQpGfSBXmqEfWH+1QANb8m+xJQRzjaf4mWTlCFxoyk=;
        b=U0a4KQeckJFrURVnIsrLvEHT9p2eAaPcUOq+ycZZWF7WYifyG1sTzOKkKL0ZXrgZCQ
         k52OrkYavcELEmJ5NwDq4Hhxx7Rsi2yySOVv8v2kHLRG5ZqJnkzvZgXLnQa6lilDd70s
         MDc5S7CKgJBD6h3nAgzm1JYi4B9x/z9RIgpogk/sgcAVHJw7zNNKxPVW5WbrkcPeCbpP
         XAANuJ/zWUOmXDB7em1hhWIwxwPDWxsvduXm6mcQ74K+RlW62QnnLIfb7RgUinY3IhPm
         w2BpMbr+7zxX58h7UiS16kt7rgLlmBEMjrZBmbeU4VrG2UUMUuVxBwL4s86S6E+B02WS
         0AJw==
X-Forwarded-Encrypted: i=1; AJvYcCWfBL5Oy8msXZ4moNgmMYTpvG7iEMGErpzv+0odou0dnixU7js+fkvueOyVwVY365hGFliyCwvCxpqm@vger.kernel.org
X-Gm-Message-State: AOJu0YzXLh1yKASBRIHYtfBJmzFuuFt45syKP1JeD4mMeW0yQfy5qCQb
	rYYDaiFHEZjOY+kzgTGXn5mUPG85Im1ZV4sXiJzjGnPFsZlTsP4dyaKLmZvGQiJDX6tcYJGVr3k
	8BHj0zyD0Fl3mToaLhFaek7NRVP+bVMA++VhFgr1D46m1Ole1NKLwnFGFcNR9+V7B
X-Gm-Gg: AY/fxX5MSdqMTkTCaEw6g41WBywnI82N5XsmK+69LX0tS5ata8w8bIincH4ZS+nDE8/
	1RHN94IPPNIKIh2ZMw7B/pST0m7wXbqKcGu0ONY9M4sLo408tsyywxqqh5yA5Lc+iqg0aX3r3rM
	ZvpF+LLGCda4hw1pwfQ3y/ocG8ozm5hUsWzKLp2L+HtbhFPsvSHisBsRbZXIzemGIqlPSw5Dppl
	gkoDH0T3EZ2Xny/ABbDeTdShNSyf8I/3DdmXpUTX5TNjlzRJaQWmfriYy0BYuYtvK5lDfZzbYqA
	wCByKWVjqPLhLD7dE55kvs2cE8qo3PJqJ92r0PnAMdQ/Ka92UDEb8mjmyylYOGMnmTIKRTwLQBB
	0wvmysbKbaY2/h6qZl3GbKpZcgxvIpE5fbzKDa1l+UDdwhOmsCPKbF/y+HWKiX5PHP3C4WsGcZA
	/h+rQbnJRn2f+7LQr/FFcU8j4=
X-Received: by 2002:a05:6102:3a0e:b0:5e1:866c:4f8d with SMTP id ada2fe7eead31-5e82786d3d8mr1380516137.40.1765598701934;
        Fri, 12 Dec 2025 20:05:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGb29xTnD6r+m1I1hK0XaOZiYjk9n8qaRwfr1WCLMdFOT32A7ozZS3EQhg03yVDJReUvxNTbg==
X-Received: by 2002:a05:6102:3a0e:b0:5e1:866c:4f8d with SMTP id ada2fe7eead31-5e82786d3d8mr1380507137.40.1765598701531;
        Fri, 12 Dec 2025 20:05:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fded760d8sm2884131fa.23.2025.12.12.20.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 20:04:59 -0800 (PST)
Date: Sat, 13 Dec 2025 06:04:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>,
        Christian Marangi <ansuelsmth@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm/arm64: dts: qcom: Drop unused .dtsi
Message-ID: <c2mvshcq36eyigsmo5cbwlpk5usfsog7knrd5djwahz2s7crmb@hpen3pruobgz>
References: <20251212203226.458694-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212203226.458694-2-robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEzMDAzMCBTYWx0ZWRfX2ZDqkIRilw0T
 u0pPJyYx8Nnui7mv5JxxedpBj0msvCh3pbAY74j41g+B1B+mCPnVXlfwpQYIVPBAVw1vNOTVTcn
 cXBjyEMLB/9Ww5lys9DbNH0wcojS+K+TeXw9h20DRJ0nAH70Atmm+VqdL8iB/3GmjoE1mTJuxZu
 lYCNn6dEOwcDg/Vj3hPMet3LrvCZfvWbpI6CHuIw5xc/xNR3uJ/znneq9v8g0kLd745174WHE8u
 vcrgwLl/1VHEVq+ZoWS1s1CWr5eNomgljFwsHDJuJJdKsBou6yGj9PQMQSBsMDGwWN5yP1Tafxz
 hScdI0vb10rHhQW5A0rXoCE2FrgvXUNvrVPA7HQO/aVVt/xj6A5+NigkuS/tCf6R5FxVC2vFGs4
 zZW3F1il+nL5moVTNAzaJDz3G0Im0w==
X-Proofpoint-GUID: b7X-QRRM6hMY08dkPvdYgnkv8nCvr1qe
X-Proofpoint-ORIG-GUID: b7X-QRRM6hMY08dkPvdYgnkv8nCvr1qe
X-Authority-Analysis: v=2.4 cv=cObtc1eN c=1 sm=1 tr=0 ts=693ce5ef cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=B13BkehGzsZbSpJw7YgA:9 a=CjuIK1q_8ugA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_07,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512130030

On Fri, Dec 12, 2025 at 02:32:08PM -0600, Rob Herring (Arm) wrote:
> These .dtsi files are not included anywhere in the tree and can't be
> tested.

I'd say, either this, or we should get device trees, using these files.

Christian?

> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  .../boot/dts/qcom/qcom-ipq8062-smb208.dtsi    | 37 -------------------
>  arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi      |  8 ----
>  .../boot/dts/qcom/qcom-ipq8064-smb208.dtsi    | 37 -------------------
>  .../dts/qcom/qcom-ipq8064-v2.0-smb208.dtsi    | 37 -------------------
>  .../boot/dts/qcom/qcom-ipq8065-smb208.dtsi    | 37 -------------------
>  arch/arm/boot/dts/qcom/qcom-ipq8065.dtsi      |  8 ----
>  6 files changed, 164 deletions(-)
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8062-smb208.dtsi
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8062.dtsi
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8064-smb208.dtsi
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8064-v2.0-smb208.dtsi
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8065-smb208.dtsi
>  delete mode 100644 arch/arm/boot/dts/qcom/qcom-ipq8065.dtsi
> 

-- 
With best wishes
Dmitry

