Return-Path: <devicetree+bounces-236811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EDAC47E7B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 519E8426AFD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32DF22741B6;
	Mon, 10 Nov 2025 15:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OIehK0CL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QJiZejO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A23BE266B67
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762790353; cv=none; b=Z2nPMaNHaOtCvqUhamhZ8h7b5MQwy+AIg6UeK226j3YeSACtDzHdo+DA6KmNu/+hKfe+ZuLAjjhOO7KWGMBqUSVbwsc3zThKfyrETuysiUefTbdJ00VU0iOtavTCB94nYrQ9ys+lmm6rZYJrQhtoas5jWDGGYG0TtBHo37+q3gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762790353; c=relaxed/simple;
	bh=MRx0liLxwwjdaqyTRdesnQ7CY2LbmOfssXBSH9YMeyo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AeXrszhLPGd6tNRy37DH34Yl0XYTZSpPk6bmaqmwvhLqGVCnnyADc+mqvvYgoQlZkW0ld4zoblCMopz9Dk/XrRDDdWACGGroNsPLWnWlsVEr4bqR1Qr+jaK23CdsrdBejpUNGVx9uM66W90meC/v6VgbuWa1AfuoJR1Vnnj0c0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OIehK0CL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QJiZejO+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAFhRjZ3984882
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:59:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t44ZoX+OCNSqApq3I3ABJHbi
	eiUu0iSqHG34zLANGOQ=; b=OIehK0CLRG0uaZdEa2h0EyqOKPKYYgur28MTqYFv
	DLIMJaq9w0RsEFJgw3qYbBWRdtkMfm6ta6+sd0KG1kSQnKdXe4iKatb8hz78uFbI
	kqgS7KiYf62njySyApWs1mJlFLI85dUXG7exAnUjkSBPfVcHVXdS4vhhz2fP1F2w
	A2yoGRR1HgX+5UJm6cH+Mw2ZkZI5YnpaFDmKJZFBqd0hFv9CjLIDTdjPwlSaCmQp
	l2hwzM3aFNhsutHpBM1HnBh/xpsIL2+YEH2XmodANjOuNQVqgeMsUB9/9ZdgxY78
	xz9ZOEkhn3H5V2XjmgEhse9LBo4EnixiNLQUY1gKaXVebA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abjxqg1re-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 15:59:10 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edb6a94873so26026901cf.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 07:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762790350; x=1763395150; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t44ZoX+OCNSqApq3I3ABJHbieiUu0iSqHG34zLANGOQ=;
        b=QJiZejO+5B9kY/5X2RMI1fDhH14jalupka0PeayZAI6vO6WQWeSbhH53pfD36otqKk
         AW6eBc3hSxnrqqnVewVIKU5lVV7d7XR+43oIUiHo2H/U9pW9oU4t3JlSvG1bNdIc6UsF
         guLpEY872+42FhNu4lYBl4s8J8gRDySZDbv9OWfeLhRidqkNPoyECtYGk+6VLY0t8RCA
         u/IC+dCgsdI78jI45OkpsURugT6H/znmjBztrfGqBQF4k5jUcX8f+MNQlliI1MnJYKF+
         04FIH5wMsVwdxIyGm+WV2ETN4OQ81ORkqROobyQT5qYJlD7eTinD21EsEX6/QtxY8Wv+
         mcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762790350; x=1763395150;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t44ZoX+OCNSqApq3I3ABJHbieiUu0iSqHG34zLANGOQ=;
        b=oSMPYcvKLa2E49G/6e8Ka7S9bYgFSUKo4tHeyRAxKgL+eW9qgZlrxBESm7YAJtbNtU
         0yNOn+nqA+T7yVjPcBlXok7dWt2/oqkk7Jxa1S4JFBd9q6eoHiKdbrSJURZrlSdUEhAS
         YyJzENcETd5gIetblweb87hQQ72hRV/JO6FbyNBCVtvD+B0GtCUINqMj0kAK/cslAIzO
         niAWBwELa0LVnBmJxHor9ucVcpYQWjI70TwYTMLQFE0IP6lUPCPHGAZ7uYME+0SgOklR
         NaFVpx8NBWXihQnefaqnhnL+jCReFKKaKi7PX3Grl/n1hwA23dHWN9uJlES/rCifWjdL
         szpw==
X-Forwarded-Encrypted: i=1; AJvYcCUhw5g+FbbkMPy/51mD+ut0itAHBxwPb6R1XcrOHdN7qKiQU0aL/Zo42kEuX/BxFHQ6DlQsBYmma8h0@vger.kernel.org
X-Gm-Message-State: AOJu0YzFP6ic3WGJWAJVCB/hMpVIg13vwWZSyyH9kuDIE1xSYtT9UW7Y
	1a0itd1iBhhb7+p3PxnhwLL1QQ9ZJYlkaFeYO6RK/0gGolWSQZ+X2SbhvrYEmLU+teR8GYwJn5x
	3JdKGLbFtwsKGAuwqOqMlpQZwUhGn2IzudwRAqBSjLfnUMC8evM4qZ6//81skY552BUwk43gO
X-Gm-Gg: ASbGnctIMktIGW92QEm3BaMG+/08fna2sEp++GwvmzoDzIMNmeAtqJq/5woV//c0ax3
	uVuEuJ/bbqjZ27ohlZysKvl9tlcCzBHnL5iPNaome5tsNCNL42lUTz/08dGHoeCTCgSKZjokmgA
	h8rfxKosppHIZ0mdkgtKRvOTAip8IDFzQEVju3+9FXDSoCXEspHl8nNpfKVpDrEjB6BQHBGFQU2
	tDvaK8EfeY0dcvC5R++1nfGMlL2p4Z4TY3DLX0dKp+GKwXwiNhty1epzs7s+mJaijtoXtFY4Sjg
	zsU2Rx/1S1weiWMsL/tOd+3X2R5oh70F2DzktM6aD+/ZtAzsxIyko4PHP1Teh4QjYSzLWLntwdl
	wW1rm/Pn5aenORDJR4IdnsStGJLW3ajGrXdVbtje7eIboIdSJbQ3eNDyXyjloruITro2nYLvuYN
	QDmTuxX+vO59cz
X-Received: by 2002:ac8:7fd3:0:b0:4ed:635c:17dd with SMTP id d75a77b69052e-4eda4e9fae0mr109401521cf.21.1762790349675;
        Mon, 10 Nov 2025 07:59:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGyG1JLLeUFIOUuxfZXg9+JKwbDXX/NfxH3k4+DgtgJPW110VLxhoWxeZqyBAiRTf2OAuPWlw==
X-Received: by 2002:ac8:7fd3:0:b0:4ed:635c:17dd with SMTP id d75a77b69052e-4eda4e9fae0mr109401161cf.21.1762790349240;
        Mon, 10 Nov 2025 07:59:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a5930edsm4080456e87.94.2025.11.10.07.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 07:59:07 -0800 (PST)
Date: Mon, 10 Nov 2025 17:59:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Dylan Van Assche <me@dylanvanassche.be>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm845-shift-axolotl: Add ath10k
 calibration variant
Message-ID: <wbe6z6z4q6xnbw4otq3vy62iepgsb6rf42sldkrsap3n547abk@ako6cd4tzryu>
References: <20251110-sdm845-calibration-variants-v1-0-2c536ada77c2@ixit.cz>
 <20251110-sdm845-calibration-variants-v1-3-2c536ada77c2@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251110-sdm845-calibration-variants-v1-3-2c536ada77c2@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEzNSBTYWx0ZWRfXzragb/uTHrKc
 +23coCiDCt278Z4Il7xurFlNhbVVXrN7MDthJFCLahiPkkBOlTK3KbCDbdutyZLaPNT/x2YNfzD
 LAvd15xpQ2DCSo1/9qQpGwwujVk7wG6FKDiXJqxOSwXSDgzT+zYi0tyYddNr425YmYRZND4Cd50
 vxA8UlatgtrY8hRlr5aSCBZr0USFc0zs/IXn7VlbzWbeSkHTcaYxVb/OqixetkGIOTOjrq910ml
 1bJc7aEYJV3jpjr1xC+GbNSFLqbKeKVtAI2ImOOX+GIBOwbElvYIJJm2GDO4xU1hurRs6iXx2TV
 m/AHV1tHKQJPZqNFe+QqPfSne4PR9+kijtySMe085AK4edOASahaN2wPgT5/n9rfIYuXly5eXx8
 y3DgdwmBZuamzWg6XZn+kuQ8qIuBNg==
X-Authority-Analysis: v=2.4 cv=CsKys34D c=1 sm=1 tr=0 ts=69120bce cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VnAOb1fkWFh9DQKIKVgA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: lKzh1PREUb9VrfQCP0Iqg2hnYUdS8TNW
X-Proofpoint-GUID: lKzh1PREUb9VrfQCP0Iqg2hnYUdS8TNW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100135

On Mon, Nov 10, 2025 at 04:37:48PM +0100, David Heidelberg via B4 Relay wrote:
> From: Dylan Van Assche <me@dylanvanassche.be>
> 
> SDM845-based SHIFTPHONES SHIFT6mq has its own calibration files
> for the WCN3990 WiFi/Bluetooth radio with the ath10k driver.
> Add the calibration variant name to the DTS to reflect this to
> allow using the calibration files from linux-firmware.
> 
> [David] Adjust the compatible as ath10k-calibration-variant is deprecated
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

