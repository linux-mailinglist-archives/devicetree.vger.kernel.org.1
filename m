Return-Path: <devicetree+bounces-158160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AB8A64E56
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 13:15:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 749613B7DFF
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46A5923BD1C;
	Mon, 17 Mar 2025 12:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="2RPg9GFa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596F023BCF3
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 12:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742213558; cv=none; b=g5+ZBYaHhKPDA8LurQ5iWUOiEc8BvzZ/MpOqH+9TpbDKb7tUpUTKe1mnCfXBeeUwW22NAeKauuTDoWr4m4eBz3hdEC9GL3HBYy31NQv2AZD+T/V7O3XMTMhmLr8/VTbubWHfWYaIwsuhBWa5+94F0Pie1k+C8H56OskJXy67zJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742213558; c=relaxed/simple;
	bh=UgTOwub6IM8lyO1PUttTb8emd3or5wxqwiyiuHKamRY=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=K5MCfnI8KGgvuOoQ/q/FfMKwWsHIj4RbiOeVTOKMErbPJM82gefxolENdqqRTf7qZs94JI9+PQ8W7yyLVFGzItlxFdKlZe7lg5Dlx/CYCEFJowgYt6tO9df5GpxXU2eHzloR9kHix8XMX/svVr0KsDk+/EuvzximknEma65E5eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=2RPg9GFa; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so7472544a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 05:12:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1742213554; x=1742818354; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgQI7i+glIQS/JWP7XVCA4jeAmkUf5EqjBge8pBC6Ps=;
        b=2RPg9GFaS0FW/R6a/Oa+Eu4gYRoxkw4NnGeQWu4MxAfDe2PavyxfNMnduMLbEtAjDk
         SPB88KK6PZLywylXVcIzT50aKwDoaXulbBD8ELLebkQW/t3ItciM9/PAB1//OYrFMv53
         8br3+iGWwuKPZLhCaSex2hv3vFXniTuubIcjRV5lDJcsP+LgHiDDepOwZK4fEa+8KYlH
         9CqECDXEGlmD3/AweW6PqtBYnOEhTpju/DXSXZpnPftijBvhvfyqajhVxBxe1wZ4QnV1
         uwftG7/wuUftUqtD5ilTvBnGL9jTdlJkCM3b/S5EtegIZ4/+TinRyd2+T91eKgbD5p05
         /G8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742213554; x=1742818354;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XgQI7i+glIQS/JWP7XVCA4jeAmkUf5EqjBge8pBC6Ps=;
        b=Dj/k4nv5G3aH76m02PqHpgP+ZiRU/ZkKVKsEM+UJ2fs6uuRLMBVATyInEsPZdrnFYS
         6fRiWGViCcfx8RQQh87tXKmPl+MbXsWWK+nnwpSqP9jyWbtQ9iK42taMTgB9r5hxMMLc
         Q3pnqpVFqmc3Qp+7i6MaQLyCGg7KuhiiI/HN6JrZr3ur02hx8CCXc20/rs3mTmHbnNEL
         U5udWV2xMtLueCFzq6rCD6qH3bmdRonqB8fshqi4zGg8XZ1/plDOdh8n2MY6XzFnrRTa
         smov6O/wUIfPscvphwLxopVxImKLJDDub/asRXyg44ePsMAQI352INyOaTH/sThmm+c4
         Rwxw==
X-Forwarded-Encrypted: i=1; AJvYcCXHOCFJQDlCn7ssYGqY4+eiICJ1q+OlZiWRZiYq36lHMKHDP/tIElGqBJPQGFLpnwVFAjVrl0aCepj5@vger.kernel.org
X-Gm-Message-State: AOJu0YyB+8F0rqKr+++RfPQVodLsmTA1P5Ub+jmllvMYd5hDm3nGWYsK
	eiZF8EGO5gmIPQi5Mealbk5M4jGUcaZJiy9T9ODv+uITDQRoNz7ZPfyS2xmvMSA=
X-Gm-Gg: ASbGncsApABeo6vrKB5y2s/5cHelMFBZZRp8mJ0cdDIr/b+d2wuyzDc1K29iMJDcvlk
	c78e4uC229IdcqihalNoSVuz+99nXLpyroL0EQrSZ/ldHTzgZ4ud0sYrbr8RuwBCCAYD0TCdJ8c
	tvc9NXHdwcnqzzECyg7xsOjel9060c3Si+Cdol27pejFunfUwscMh7cU8y8Y6M20pc8aIEXjcK9
	HkOra2WVEedGxftdalRtvptHGh3INoZBGehDZq87ZG6j/Jf4/DEhfsfiWopPNdLU5rbbCMX+rpu
	RjlVKLUFQWhzEA6Ev7Lpt4X1sSaM/EY2kIHDwBJYezD3sHe6NqgNtYUN7SYdKYQEiP9VQEyFcik
	y8hMP6miTcPnCoA==
X-Google-Smtp-Source: AGHT+IGkBMivzQV4mRjAFxSl5hkbzmyy3jCErKcn7Cl5GDE/j11zVkAXm1oq3i12rfExH1BTJTH/vg==
X-Received: by 2002:a05:6402:518a:b0:5e5:3643:c8b5 with SMTP id 4fb4d7f45d1cf-5e8a080aa09mr12579753a12.30.1742213554535;
        Mon, 17 Mar 2025 05:12:34 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e8169b0232sm6033780a12.38.2025.03.17.05.12.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Mar 2025 05:12:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 17 Mar 2025 13:12:33 +0100
Message-Id: <D8IJ5TEHREW1.2FK88ACT1JPYQ@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@oss.qualcomm.com>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konradybcio@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>
Cc: <~postmarketos/upstreaming@lists.sr.ht>, <phone-devel@vger.kernel.org>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm6350: Add OPP table support to
 UFSHC
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
 <cddcd851-5e8c-4202-baad-e56a09d5775a@oss.qualcomm.com>
In-Reply-To: <cddcd851-5e8c-4202-baad-e56a09d5775a@oss.qualcomm.com>

Hi Konrad,

On Fri Mar 14, 2025 at 11:08 PM CET, Konrad Dybcio wrote:
> On 3/14/25 10:17 AM, Luca Weiss wrote:
>> UFS host controller, when scaling gears, should choose appropriate
>> performance state of RPMh power domain controller along with clock
>> frequency. So let's add the OPP table support to specify both clock
>> frequency and RPMh performance states replacing the old "freq-table-hz"
>> property.
>>=20
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>
> [...]
>
>> +
>> +			ufs_opp_table: opp-table {
>> +				compatible =3D "operating-points-v2";
>> +
>> +				opp-50000000 {
>> +					opp-hz =3D /bits/ 64 <50000000>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <0>,
>> +						 /bits/ 64 <37500000>,
>
> This rate on this clk requires opp_svs (not low_svs)

Not sure where you're seeing this?

This is from my msm-4.19 tree:

gcc_ufs_phy_axi_clk_src:
    .rate_max =3D (unsigned long[VDD_NUM]) { [VDD_LOWER] =3D 50000000,
gcc_ufs_phy_unipro_core_clk_src:
    .rate_max =3D (unsigned long[VDD_NUM]) { [VDD_LOWER] =3D 37500000,
gcc_ufs_phy_ice_core_clk_src:
    .rate_max =3D (unsigned long[VDD_NUM]) { [VDD_LOWER] =3D 75000000,

[VDD_LOWER] =3D RPMH_REGULATOR_LEVEL_LOW_SVS,

My intepretation for this is we need low_svs?

Regards
Luca

>
> with that:
>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Konrad


