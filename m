Return-Path: <devicetree+bounces-250966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F29CED461
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 19:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6BB33006A61
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 18:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215FA2749C7;
	Thu,  1 Jan 2026 18:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D6XRqEBy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BkDp6+gB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906F423A9AD
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 18:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767293745; cv=none; b=rKJ8TybuqRue4pheKGhp3MId29dpCrldVD1PSdHRzUxjhtE1DIXwgayJRub890YSekZM/799RSBf3E49u2r1av2K1tkyJTaaJcvDNdtHqdHh7mwFMX4CRdP8KSbCD1HoJTVzBg2dwgbb3aObXZb4AddluKIng5VnmqevkLW6214=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767293745; c=relaxed/simple;
	bh=BsHbCL31zaCsSjy+gR/aV0LOVFxYgDWTaTyqMVziIck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YBXjffV2HgS9PfNf9Gz65VqGXVUxUcx9T2hmSvNESjFw+bPt3c95esDrtoE+Ui5GJuhz9gguDDaRZcO8iRiaChBHyro4eu5vjl5yohyzd6hsxPW+xsS0Z0N9EDB16fXCZVQVdnvxn1yR3l6hVEHS5c9e8H3YqFKatHmxPooZiOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D6XRqEBy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BkDp6+gB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 601IfuVY3049204
	for <devicetree@vger.kernel.org>; Thu, 1 Jan 2026 18:55:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mJDBD6C6FOpNftcz8V52aQRx
	AwwFr6Nbn/iLAulEz4c=; b=D6XRqEBycoPfywrFAJMOwk0Td+BVQj6fDUJfxnGS
	R3ROIporwU3L5GF5iDHGxOWrZIN1qZTLysreBXAyBp2BX43nWUDLwGRQmeIlYdqH
	5Z6a28TE2AqARWhtHoib6vRkDZVkKY/XzaEcGaOLaZmiNcPTWx76ZUrs1TP42REV
	TPCKEHQLq47czWMkWNWIulVH3P9APWdVdYlL1k3iJZ/WEULiw9a7bU9DwFN1BGoA
	SQ+DsGDQNEzOBlne2OzWiWOUOF1Ww4EI08YNPLAAgXGk5ohX7C/zizexcL2Ktttl
	1i95KkjLxPt2XxZV1iK1VFNsxm/QUJYqeHPcgxLrIUuEcQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd76n9xq7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 18:55:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1d26abbd8so349763701cf.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 10:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767293742; x=1767898542; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mJDBD6C6FOpNftcz8V52aQRxAwwFr6Nbn/iLAulEz4c=;
        b=BkDp6+gBegPOL8jynqa+AcKYjYMif9bEtspAEuP9Tc/idGOuTPOT9hQ/A67wFHcE/d
         wNhmAVQkSJA1+e+QVlrG849ciCWY/KZ6Y60naEMYDhgw3trbEg5brol7dHNJU0KwJMmZ
         WXyALzytQkzWEbGQM2ZOVgUA5oZd9+TgDRz0bLjMBgmpebs5dVDcKzfYkn7WU9O/52PH
         JPBCPKJQsKNiIJ5rIaSQnhOX+VuOo+SCQXhYwtD8JLtEiVMb8QnHONbPXKj+lUr1YBg5
         5zzSI5UAq7J5d1sKkqjuOwb4W+6KOIqMfkATRNtpcwYgYDuri1VF1Ui3my9cm7orEtoD
         KVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767293742; x=1767898542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mJDBD6C6FOpNftcz8V52aQRxAwwFr6Nbn/iLAulEz4c=;
        b=wNnSp7DZPkDFctid6NnB3cS4tPCoy0jbG5JYdrXabDFNlKP09FIgf/srx3EzuJbQ4k
         z2o7YW1MWzu0LSbGJBAx9KndaUuRIi0SKc4Lfdo+GrDsi17bWX+fDVku6c1ChobleDAy
         RB2fdGc0aewLPdiMNHHUE21d+LekQqeGLSWXNns2ZocUlji1q4NYfsFGwqOE6+3xDrEX
         uKzJOqz5fPNUmSWsZWmQFZbABvigMJMbBq5NoK1C37vSK9DSfS47lAzntwMThcHYZ5OM
         puGzG+bG0ZkGAKZLKrmDso1pqlzHwTDjR0UeC7ti/+z+QA5SNPi1CND+NUvDhRwWL1Ib
         gOoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcE7FK+FrRM1P8Id5oIy4Gl0tzfhZGwR6kVuUfTu+qtty/Ch1WHBAECdVPolXlcX29e9PGSJ7yQjyA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv6B64UyOzknxMXCmwnZBFRiI8vRNJJj6iGRKLnvaZbx0By3Wa
	VVnL8Bx+B0MdS0aHqmSfVfdjknCPmOL+OXuCy0Z+jTBZcEP22sMgnQ4Fpk5uEQ+Twp0dj/Eb+6b
	JCsp5xbho4DJrQlHv2QiQM1/egg3tiqwk4gQ3W308nlxUWtdjf46RqcIF/6Ekdz/Q
X-Gm-Gg: AY/fxX6fklSa4rVIJvzlfXuvjM35wImfbqd/SJ1101Niwy4fiwZKj1uwzGSpoAI3F7A
	g/IeDygRDkCjp5tgHKpGvroDtVTDtdYJ/8a3mk98aQxeFBTWr7JYFrrroduYK35L0u5SENaqQPL
	sQcXyGvny5JkrK5V9iyHOLX3zqM7Okao4p5Yln05yPPpSA0tnNQcxlQHU5+8Lro2XNDyXQh8wqa
	BBX+pqmkyLZKmGI8QFbPwZ5kUqroskOtRUzu8g6Id9sRw8mWbJYd0bMI9O2iRNwD3eH5J8IYpv+
	0/PH0uymcQT6caX0RGIDLO28kSlwr4IZfaAoNbo2aJEtrSZTXM5BMwDKbOXARt3FdZXfGiQa//D
	lRHB6mwgwpAIJ7wwPpl36
X-Received: by 2002:a05:622a:198b:b0:4ee:2074:4b6e with SMTP id d75a77b69052e-4f4abd8cc2amr520843921cf.45.1767293741751;
        Thu, 01 Jan 2026 10:55:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMAbbN36NDUCpPhQ3JWoVexrYcy5eDxCWj72SmBlpn3w+//Rky11IVt9UffX5P4zBC9TQvFQ==
X-Received: by 2002:a05:622a:198b:b0:4ee:2074:4b6e with SMTP id d75a77b69052e-4f4abd8cc2amr520843631cf.45.1767293741267;
        Thu, 01 Jan 2026 10:55:41 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.10])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324ea82f6asm82585080f8f.27.2026.01.01.10.55.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 10:55:40 -0800 (PST)
Date: Thu, 1 Jan 2026 20:55:37 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: hamoa: Extend the gcc input clock
 list
Message-ID: <xoehtndy4et4axedhpeeqhpfph5jom4jqvl4mrt6obnv7azz73@53kxqndkysae>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
 <20251230-ufs_symbol_clk-v1-3-47d46b24c087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230-ufs_symbol_clk-v1-3-47d46b24c087@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAxMDE3MiBTYWx0ZWRfXzMRRGeZ/26rh
 Tl7gedAaxe7xEGtcg0bIpktM0ep3dJEMLZJ5B2Z1u2RMjGwZNNmrM4pmMqpiHWzGd8XX29l0+0F
 LvqliW0dt6dKOnce8awenER0+smZMp31ik6WL1soph2DlpKR83YHrPGGsZZZ2QSdaf9dncO08a6
 V+i/fTIBMDfA5W+2FMP3r4kCxzfFwHNReruNqnhw9Y6OIDxdf3BqDP6AUnDO73G6fRefkVWUtsh
 t0cuAp2vmAG3A/5komnlDHGD71KtutTRk8Iw80liQHpkq4iJSo/287Ud7NdQtBT5tYZ5iZgMtTE
 zgz0OXBV5dTPSiOwmhiB3KWWiy37sQUw76XyeHmmB1dnJktTUoTic7eJGCSteI+2GZFzi3uGM7Q
 66HGwGs14F3b76BU7plWqt+7tr1RxYo0aBIHc6gyVkzo8wRrhSa0sYIhvZXWsspA1g5jdfo6eE/
 OTNFU6JKe0Vm1X20olg==
X-Proofpoint-ORIG-GUID: CGX22MFTCz8dT2mnsh1fu7icuv0lUR1m
X-Authority-Analysis: v=2.4 cv=TdmbdBQh c=1 sm=1 tr=0 ts=6956c32e cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hZ5Vz02otkLiOpJ15TJmsQ==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=q0JkR4NhiA7wQx93E64A:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: CGX22MFTCz8dT2mnsh1fu7icuv0lUR1m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-01_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601010172

On 25-12-30 23:08:36, Taniya Das wrote:
> The recent dt-bindings were updated for the missing RX/TX symbol clocks
> for UFS.
> 
> Extend the existing list to make sure the DT contains the expected
> amount of 'clocks' entries.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

