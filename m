Return-Path: <devicetree+bounces-216151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05026B53CBC
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:54:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B67BC3A9839
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 19:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1287025FA0A;
	Thu, 11 Sep 2025 19:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RB5206Y/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB9246BD8
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757620453; cv=none; b=ORM/rc3jWbnSshxgtkPPMZLt4Gq3Xi5u8aFBMS/+d+4OYGMlOaJ5h8PM0/xIgtNYsDpLDgxJfiMBoZ5gLsmAgGG9mz+PVdtjI9TGSOdzF4vfpPYruJfWFM9vrROQ7Q8yvWw20A/KaZCcdwWqSny7rCC5lnbpN0zDr21QuHTTLdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757620453; c=relaxed/simple;
	bh=C9oaw89htYCAQlCZ0NUg8UBboUF6FXp/isTMZl9ZBuw=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=q2yapopdh3RxImOndhZo3OcLPok2nL/JxJM7FVYrUoEiSyjqk699Dy2Ojw0AHlzEejUX/vnui7JjG/g+wiCOyxE5CIcZfkIe+Uu3cfsDcFT5Cn5E/20EgmSqUIGLX9pm9+G+tEVCkOXT+K4ehOQSIJKD0COarx2TCnluMNr0l7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RB5206Y/; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3e751508f15so895622f8f.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757620449; x=1758225249; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oKeretZYtiau/KKPwp/maBA1dGY4AYzbQAj9U/iXV8=;
        b=RB5206Y/EesUxt2FaFBQj0OAWbh4Ulpjzv+ZYwAB9NSw2u5axQIQvukRec7b5vBiUG
         RagaM2phxZFv5+SSqOA/tAzYkwW5Um1DUY8EH3QxMPEEM5KD0jQ6RWaGa1T2NpKCm9tv
         fefYAFeqm1VLujdmFM079ptymHiQBSxSxf2uZpqiTAqEua/5xv/K7E0pnmSuGj9Vi5wJ
         d9F4SQMQVo8Gv0Sq+iuE/NHmXzja/OsSG2nF/cZr5Q5vXokWqHCObYlFk+LihwEviQpo
         anxyeESy5AU2CWpsljso2kUXAEQe/el3inctnqmKEvDq1zxE8MHh2FwAKmY8/MXiGbVH
         WFAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757620449; x=1758225249;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4oKeretZYtiau/KKPwp/maBA1dGY4AYzbQAj9U/iXV8=;
        b=ddURJhUfWZ/p5BT62WEnhS9reh736QYaKlIdVk+YPQtamAkdIP3H13qSHTQInUB9Uj
         oPt9lIxttSwOS7EfwsUmwD1+2H7YOlofB2suA66oCHVQlUkUWmCC3p+DlCEa87aL4+s2
         gMFW6Q5tgc/TiLduzCJ0TVVTZEGl88LcQXJUD8HbfyjmFDD+0frFANEG/QmtlP5exJZn
         T7SEdu80eu9Cw2lQ9pKVOw7M1OMhjzdT7prF0+b9bIJl9dfXyAgc3plFkT1aoFotiKHn
         9kIrzSYZrENY0tGAa54sZMmVHqRfPRDkZ7jWhLlufpNLnN+OGq4MGRWUvsx5ksSUkiDT
         pNmA==
X-Forwarded-Encrypted: i=1; AJvYcCWYiJVPZN9VZwPjNMV2j01cmPgHor3jc67AvvFL1fEN5q6UwYVL4rQxtowOAZtxM99DWwBVXR5IaNu4@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi4EvGOPGJ6styJNaaTC5C0Cr+u/dhCEvrE+xXHE4xi5/uoZnX
	0jP22srUIV+zDEAr+uANeMqcTnqmDvVvuLD4HPkJh29qYA8obHcc0F1F7o0ZVaYKDM0=
X-Gm-Gg: ASbGnct7o2kqVBudMVIRZ1W60pzE5umhoYVTOuB/dLzaRrH8cr+CXHlcCM6/JSkpoB6
	mfWljIsJuEC3uCaJV/pJev+TanNt90nvrPSMkVZ50XO0fCKuZEaH8IgwB60vGV3NI1UHRr6/d7T
	Mus5ULTVz/KMH4P64Hze3+R5axDhodfiyfpiVu1CoVizXPusFrDB+8tGtwQvtnmJpDk6L7fzaKg
	5sxTNcqMc/NIKQSxGlzI963tk7bjeoRJsAJVKVYl3AmSje+Kv7OyG8PcMsymkWEypZrOHg6iSN+
	sCf6hQEHY0KoiUh0nrZ7RoS4LTR38Rf2Pug4LgMVBfevyEZRqiF4Qkj6te5R3bXLMqam1uXbWN3
	Yv/IWc24kuTO6OiWLFBYH4ieB7AyJZYTB/08=
X-Google-Smtp-Source: AGHT+IGTnQxibZ37xyPnj8SePmvouWMa7nELymuXsr6TBZk9JPUb3PXeIrdR9ULXwb4CIWEV0IoOAw==
X-Received: by 2002:a05:6000:2f87:b0:3e7:47c7:9b3 with SMTP id ffacd0b85a97d-3e76579214dmr541452f8f.14.1757620449495;
        Thu, 11 Sep 2025 12:54:09 -0700 (PDT)
Received: from localhost ([2.223.125.77])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm3498794f8f.36.2025.09.11.12.54.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 12:54:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 11 Sep 2025 20:54:08 +0100
Message-Id: <DCQ8G73ISXHC.3V03MOGB6NDZE@linaro.org>
Cc: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Dikshita Agarwal"
 <dikshita.agarwal@oss.qualcomm.com>, "Vikash Garodia"
 <vikash.garodia@oss.qualcomm.com>, "Bryan O'Donoghue"
 <bryan.odonoghue@linaro.org>, "Neil Armstrong" <neil.armstrong@linaro.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Stephan Gerhold" <stephan.gerhold@linaro.org>
X-Mailer: aerc 0.20.1
References: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
 <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>
In-Reply-To: <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>

On Thu Sep 11, 2025 at 7:38 PM BST, Stephan Gerhold wrote:
> Add the IRIS video codec to accelerate video decoding/encoding. Copied
> mostly from sm8550.dtsi, only the opp-table is slightly different for X1E=
.
> For opp-240000000, we need to vote for a higher OPP on one of the power
> domains, because the voltage requirements for the PLL and the derived
> clocks differ (sm8550.dtsi has the same).
>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 87 ++++++++++++++++++++++++++++=
++++++
>  1 file changed, 87 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts=
/qcom/x1e80100.dtsi
> index ba602eddfb54616ad38205570bc56a1f0e62c023..d6914165d055cd0c0e8054126=
7e2671c7432799e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi


[..]

> +
> +			/*
> +			 * IRIS firmware is signed by vendors, only
> +			 * enable in boards where the proper signed firmware
> +			 * is available.
> +			 */

"enable on boards" please.

[..]

BR,
Alexey

