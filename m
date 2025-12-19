Return-Path: <devicetree+bounces-248245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64018CD03EA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 15:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BA56302489F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 580A3126C17;
	Fri, 19 Dec 2025 14:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RdrwGOxT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jgl2vcGu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A5581732
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766154168; cv=none; b=cwsao7DxQ/n5yxzmUpigkzpY7SR2W4WB4jpoXs/J5gjDs1YDzs5Lty8FzJDz/XJxSmuWqaYpcGGNf+DxlHvXF4M1WXQmNqeOkyARmiegvjWu8Pcy05KajOo1VNy/a8n4pS4FZPocHRr2y1TOxOKLcUem747qyP9Tu5SrF9syOWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766154168; c=relaxed/simple;
	bh=rMPeP7cKewbJYaRXHJ9LTGVVwPU7cSSIGeM5jtItnjk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f8AIPsC2nTdEn8qGaG/Fp5mPp3UP4bQS8iVDPTTYkXMNLW+1eHV/QJKb4lV/SKZm1+O4B/uF9juSRWY1BdWrFy6LHKm2Zt/6N3uoF/GvJLBpiKxWxkxR7wvUmft2bXDQKo6Rino0n7WJbL3VtyBGX8EitZTzynyRtM4VGpdYuZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RdrwGOxT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jgl2vcGu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJAqwCf3999441
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:22:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j7pvWsuXQJELObmI7x+PxidH
	a3S4nPSltcnRxt3AMN4=; b=RdrwGOxTS92vQXL0XzrALWtnwY8pkkTyD1hI9eHE
	+7JCyee5iA9Qn2lDpMA7n85oHBQyrA1kroUKu/keq1FrRENStGJdqffMCBkIc+db
	7F6rzWa7Tlovnz0Uajd8RD8ljnNKrqRBTylx7edBPZtJwlFQwn85dcwN6fBQ3xYq
	ic872HuUGGjnrNkaBYkBioEK3K97AYNevtK4OXb2lRlM9yhlT7aLlC+peUa2sb8G
	/TSO9rIvWmp5OES8C5ngKEfl6yR/NDQiziFnY/iyp8EogQNb3ZZGhC1qTEdWATrC
	ReY5lZPLen2JL0tpSJ701hWF4EB6iwsfV7rQ9MEK09yupA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r29jxs4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 14:22:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee21a0d326so31056241cf.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 06:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766154165; x=1766758965; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j7pvWsuXQJELObmI7x+PxidHa3S4nPSltcnRxt3AMN4=;
        b=jgl2vcGu0ILPcto2RWYKnGSnxufROmXNIBK2wPkH4E24tvceJqkrtVRRT6wdaU5i/x
         LEEI+kavmmGL1OHsyky/Yi//W/hB8E2ZsrTwQOauGvTZis+sRDxTnU0roQbIhjpxy0/8
         5Hkh5TD8xL6Nc1ObuPMbMZybb9nBm8pz//njodwS0RYu+K1GQCGBE3D9bIz1fUHaeVGD
         7FdvDzSAvRMoQ697COC1n7zNKnKJBCoDRp+XZp8b9YCJMbcmqHhLrq1c2v8vVEKO0ETU
         NKoAVicY/F8w9CUX8k8D8LAXCFn3Oc5UywFjWz/0Sz6rFleyb++MtydbYfrIZz5WJHj8
         J5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766154165; x=1766758965;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7pvWsuXQJELObmI7x+PxidHa3S4nPSltcnRxt3AMN4=;
        b=xMJqVMMZp3BUIa/dcd6xrxgNGDZYS9uCLgYq8qHbGd5ERd94NNX9dnw6WpmrJavnEf
         uoH/RHEYYxpzYUD0wr86W30MKR7/DT9l5XdapcDCDtMc9fHis0xSo16lwQJkplOO0v5P
         bxrzGIzcnDwdUJw54iVLevT0YoVIYS3Poe9sppQCLt0QUExCo17FXuMBw59HKjsG5d5Y
         Q89WNrgQKTnuLq0rY5WtgXBkUHIjSIX6FbfCcl8wJncydExvRrrrWmkSUOTmWsmxqogq
         lkaLZG3yrcljbLJdFIfgaEy/kDpfpvPSv1xmONOvXmfxsk/7xyYHTjQfVunoq6FrHfEe
         c1eA==
X-Forwarded-Encrypted: i=1; AJvYcCVIA/eUitiV7Kk3E7IM5lxdNoCVqs6gRwepzjxP2QAZ+FVvY7T7ioCM2zLIz/lTmkTOjSzWRtb6xIfe@vger.kernel.org
X-Gm-Message-State: AOJu0YzCRnbSFSCfupjLtxVfwS1mzV+rESvgDvbwwleLouistNnB49GV
	UG+Y4IIu5Z3bhLI5ge1AMCAtmOO7+CUYBODnajNAPDlzVgIliAWeZzB4bJ7m84RBgnsqR1cKmpH
	IKkhzQlg5IrnarcregTsenwUAlfyXAHgZ8YhNmbU1P97emHFUa+pPUrcF/RW842gJ
X-Gm-Gg: AY/fxX5MGqHKZ6whJ6UTG8o7wGz22ru4lwk2Bip96ncWSqFfXJ7pd7w4LIq/8+CtSkE
	R2iimZ1bJ/jfrcdYwACNlWRv/56IiuSdYbL4GXDnSnwej2OB26nkdraDwO2I1rn8ADpeL3aozpu
	ff+hwtks4m0bRqfWZ3WIOwJ5Sbv6DukRPgskNWAYty6cZDEZus+52pKtXCfwlLNFRXui/fEnT3y
	AGxMinyTw6IRHg06Myz2gb44Bz3AyrK8BkH5LKaB8zpGbdr0VZLT1XXnNzodRh+v0L5B2O+l5Zw
	dRA7YQRCYRGt9p/dB99nltn5Fk45FAOBaxKpDviqTPGNQ2CkXUhBqeQvDzVfQ2YLaDLVRJD6AQl
	OD+9tiNC6hzImVrkGKZNQLjwJwCWcgyjOrpA6ERIK6YJatX0YwKLbmPorAkeWA3lES7Ktnoevav
	bBPvbpi7QWJghC0s6fYj3fOxg=
X-Received: by 2002:ac8:6711:0:b0:4f1:b93d:fb5a with SMTP id d75a77b69052e-4f4b43de5dbmr9385891cf.7.1766154165039;
        Fri, 19 Dec 2025 06:22:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpIjNCeKhT5W85cgv+xOyI5yMUcQMZYD+21Fr3TzDVqSALOU0KA3phfoKOP4SKrKAH1vtQZw==
X-Received: by 2002:ac8:6711:0:b0:4f1:b93d:fb5a with SMTP id d75a77b69052e-4f4b43de5dbmr9385451cf.7.1766154164600;
        Fri, 19 Dec 2025 06:22:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185dd252sm722344e87.24.2025.12.19.06.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 06:22:43 -0800 (PST)
Date: Fri, 19 Dec 2025 16:22:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1-el2: Enable the APSS watchdog
Message-ID: <ti5ackdyyea2bzq4gyxdlbx4vksjqbrk645g4ebmkf24xgiu6d@rcdnewuwndc7>
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
 <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-3-fdfc6ba663e6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-3-fdfc6ba663e6@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=P6c3RyAu c=1 sm=1 tr=0 ts=69455fb6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=YcuGliB_beCyQ2iCDSYA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: aZ3bHkPp8c42zI6y2qoKSokI5M7rGNSG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEyMCBTYWx0ZWRfX27k94zIv5gZZ
 jlwshArCEq2koOKjsCKHBgzawuzinJz0m7UA1k1sxsXvDXMBVfhyEQ6dKT69NgkBeiPtNGydYcF
 TDJfzA53+/H8O3Ykchcx0Y6+SEzOR+J4rGUfm/B/csaLIEME1Aq8fBroum/AKXj210EwyhK2QOs
 /tO+oEHsy2HS2jracVia0MnGR30MX9DKKAzIzbiQjbADdKhTi9ykIm74EgLihMt76EpTy0I4j+p
 1BiogmL1F5R38RoP9yTKgyltkU18Oh9GJhmzho1ahNZhwN4Vp54bMZLGu/ZQV3R/K8jCN69z+q0
 gFo/iegiqxhIbbhwAD1nCCTfGabkcAhcHynyWoZSMFz6QDFjkZ4chDMEOIW4iLMuGnpY+OSsiDa
 rVXwK7euqWeKR8rYRlRpfUsTPiQL/sflDykTsgxealtguHpgThsGV/xeQ1QvsWr/+He2C/Qd3m3
 G+EPwg1ojid0GXpGWHQ==
X-Proofpoint-GUID: aZ3bHkPp8c42zI6y2qoKSokI5M7rGNSG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_05,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190120

On Fri, Dec 19, 2025 at 12:00:30PM +0200, Abel Vesa wrote:
> In EL2, the APSS watchdog is available. So enable it in the overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-el2.dtso | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

