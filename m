Return-Path: <devicetree+bounces-196587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 434E2B06537
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 19:35:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 615DA1686AF
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 17:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10C327465A;
	Tue, 15 Jul 2025 17:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HtSSWESm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2FC1F3BAB
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 17:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752600919; cv=none; b=ehkVx4gvBuo7qifpDBv9pAcld7S6k5ZNFSYFdKH96CMoGvHueKYJqNeereoQRhBEgx96hHkREj+auUwwLTE3mMylu2OZb9bkb1OzxdwvLdcJaHZ1qHyqa9dPqU7XrYo3Ss1MjeDqz32PfF2o5TwQuCu1YuiEYYcBqmMCllDhbEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752600919; c=relaxed/simple;
	bh=2J8c2z5EXWGctgukrb93oHp2+Zfj54zLjUjpoTWXKbQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=earxas6xVylHhgRLAu/hKzLsNOrWy5TCP3I63dXPK6TiqFAUeSD8yy6/x1ZZPFE0xwR26hKP+dx9SzQKI6gi6tzKDeBo/TlXcCJMoLL21nb29qWMb3PX07lzdlzdg8fqyr+klWq4+LBoHba5PMyILftO/VqhwHyZrsj+GaMcBx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HtSSWESm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDABL025681
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 17:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YwHMduJFVZ0XMQsQOdCu9rTr
	BXiDOqf57dZo0ADVf/k=; b=HtSSWESmR1v8aUvbmxFz2n7lv4gFQQKPmoVqHA/B
	INn32DeLsRf5fkKXgD8Ae2eet3yealk6LUaWq0zXbhU68ttL3LRbOUs2zi9WrE9/
	BE6OcAqfBGfnVef7n4cOSUHHj8x2RwS9kz5mM6ktfYrTIHh/QVm1Mz/N5DqHsmRS
	sW5YkTnZxb8Yb1s5jWyY3BVwMJyOGf6hol4Iip/9FYjYcHI0ha8mdGWinyNdxX8T
	Z9TgsfLgWSmJepkif1i/zHKYX4mJBXsmwO3vXAdTXdS/2RMAfgCUwIULweluiAQC
	INvCL10uUOkWDMrPXwAe72ATx4/BA56yOJVCCORFzx3V7A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy0uye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 17:35:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e237c2f4ddso423414685a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 10:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752600903; x=1753205703;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwHMduJFVZ0XMQsQOdCu9rTrBXiDOqf57dZo0ADVf/k=;
        b=CZF4KtCJ9DX4F/mLugyHe+hS/GNZAmbBl9sO8553NUDWRqcsnKa5ddTMC9DmEAqoRI
         JJ5qhBg+8qLHk5dgARn86CK3+M7xVJcCbCVkhNHS0BC4XRuYiIaF1chMcmaH08/OSZKE
         P2MlwEJHVNxGifVOMOQQXWcvAke7cbCH/SQp4OvYbhfHVRVi3t0Jzw3dVdAgi14KmGXI
         +uxAdRgR8tSP2Umesurt+pGL6+BUWcbFSUPnwqqzillp7dwxbs/ltCoaOQnTY2ka6bLC
         dzp3dhWxfYnMdsxmIRqT7Wjh/9FB2S/mq/pnIVgCihv7mmyr8gAglpTwyJOFwYtF8738
         Capw==
X-Forwarded-Encrypted: i=1; AJvYcCVC/BkHOuJWv9tu3L2e6whcz+w30zxNmC1omhJzJsC3xOsGFGNnogetLLzf2GveVsu+7pZ4K77lhqxN@vger.kernel.org
X-Gm-Message-State: AOJu0YwHs4+SJj9w3zPc4kamEkKlA9rzfaCI621k6iReAQheEw3gpkOd
	zdFR/JdaU4U1RA+bTHvRM12QjBMvHyZSMcESy/vzDU3brYP06oBQIU02odb/zCd8ZJuYW9+ePcJ
	pwe8z3EQcZx1BlsUcSRpj8o1TPtZgHy1z63isU3GipikU2BPRf/7W43hWQw0oQzE0
X-Gm-Gg: ASbGncuXmmZo5EhVGcJ/L/R8DtQMmFEeeLjolYVgTm1krwi6OM/M5UGiI5T/+GlCA1g
	EFB45B4BlhK2eFuMss6b1en4bSeuN82jFMBmDdsK0HTXTuI1Hfxvg3S5j5dDIwZN+x92NXFe89D
	UhaSfijdZsJD5rEyx29F1ARnMl1CfDL59s4c2Vu0qEL4dbIxDTblLT0W35vqcEw6MtbtXs4fnbl
	Hw4OVxZYr4nY8HqBk0JytoWs5P4v/cC8bHvCjhqr50q3iEQ+kWVxC4H5zMGqrvxwKtV74v5Ztdb
	WhhKzc/eGDJgbIa4blt9RTOVRC0PTXSnNIq8X7ebXQhLeYlpyIAYTXp+5hmOOt7Jzmo1cGCuSci
	+gNIQur5y7tiK/uNUhtTov9jK5Cyi5YGcu7oG4tdx8dXaG3teORMg
X-Received: by 2002:a05:620a:4513:b0:7e3:33af:c45a with SMTP id af79cd13be357-7e333afc5a9mr1078300685a.49.1752600902893;
        Tue, 15 Jul 2025 10:35:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgkC/RAmmlrlOop2nd4cM+Qb/s+gLrKuUEGXd0Hyq1/Zw3CSYcbKVNpSB1ZGZ2gTFs/qFsWQ==
X-Received: by 2002:a05:620a:4513:b0:7e3:33af:c45a with SMTP id af79cd13be357-7e333afc5a9mr1078294185a.49.1752600902369;
        Tue, 15 Jul 2025 10:35:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8ed429sm19601101fa.85.2025.07.15.10.35.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 10:35:00 -0700 (PDT)
Date: Tue, 15 Jul 2025 20:34:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 4/4] phy: qcom: phy-qcom-snps-eusb2: Update init
 sequence per HPG 1.0.2
Message-ID: <n3khphjtqwcfhzxbdici255in2cbceujp3jlrtkrqsd77jtftm@ggpa6eek2xna>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
 <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715-sm7635-eusb-phy-v3-4-6c3224085eb6@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE2MSBTYWx0ZWRfX44DNeB7y/RwG
 4tw1Ii60owTvy5RO7uFcOAJA3AWZJeU1Y14RAsPTcXoQ/mqHSJwCr/TU18hPVoE0Vn0Po3t423P
 obK8nUfiZ7d1XU+b9lHnjF7ecuEhuoiPi4rdYhK9xPsuqw8V2FO4acjo6CdkFChX3/lmLALZHyC
 wC9eBp2GaTd9G0k6dHqaztRiJMnz3TWhEbYOk4RBV1Zos4o0Xj8g5m1I+fyTAS+g2oCdinPVCEr
 H5pVpqNr3waKRysaLaPKqIn5eOmb8oZfjFZVBxaKNFVF7cQyAyRFEEShDABKSSUrQjtB2j5Wjzk
 6uF43DkFY87aZm+lIDdkcsWikme/0WOWMNIT96vC2A57fKiMK/Hujyk+MAAnUnVKD8qkrWASCzV
 x7S4sWvo1Xx4pCL/vTGQX9IVXYHvTUlA26Fu8JDVA+Z3Ca+StQspjwIWvJpJ7KCKTgBtep6R
X-Proofpoint-GUID: eqkLGJdrH3ssVYsYlrNWt3BpKk3aR3so
X-Proofpoint-ORIG-GUID: eqkLGJdrH3ssVYsYlrNWt3BpKk3aR3so
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=68769154 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=xixfk-lNQEsWtM5knIAA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_04,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=881 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150161

On Tue, Jul 15, 2025 at 09:29:37AM +0200, Luca Weiss wrote:
> The eUSB2 HPG version 1.0.2 asks to clear bits [7:1] on all targets.
> Implement that change in the driver to follow.
> 
> See also https://lore.kernel.org/linux-arm-msm/7d073433-f254-4d75-a68b-d184f900294a@oss.qualcomm.com/
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

