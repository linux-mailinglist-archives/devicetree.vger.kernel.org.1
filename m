Return-Path: <devicetree+bounces-142819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D5BA269E3
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 02:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 285D9165BDA
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 01:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544E38632C;
	Tue,  4 Feb 2025 01:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q+2EgQi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7662478F30
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 01:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738633017; cv=none; b=c9FxlDN/v0P1xhmOAFC0U51yTkftDyDWiOMKtdmCqWpkKoXignVwmRhSBrUbGWn2rlOyIryQwdg3CJnsZ+/MLvkyP08LDjulxxEbsftlt2iiQU/xIXGUjqp2sTLCs1md0aOcdfPOwNoqggSxEjnMPybVWE54XUEGzAIZ5uNs0H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738633017; c=relaxed/simple;
	bh=gQJg4Yjqg4bWR3kSEamLIlUZAPB4Qx9PFeNNXZoa5lQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I4zVsnsrdY9K2ZnPEc3EL3WgdJZnWfr26P9i13QCCA5uoGH0jNNK64f8d/7UML1c1h6EpK5WY7w0Bv1GMuGQ1bW/F5KLK6/RN9VAd2OvqCVbiYPEyo75dg0Vtpl+sFCuQhPTcBaLLyDm7LvhSK8Ts1ZwTAtwxhHOoHtsZaWQ/Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q+2EgQi6; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f6c90b51c3so29978887b3.2
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 17:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738633014; x=1739237814; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ROq+7dop8/gAZioS6LiNRBVOkjkfWTu5NLRN5pWfuk0=;
        b=q+2EgQi6ngOhd4dLGCCZZJVm7WJXXDCun1z5h9NY3FuXQ0rx8cBL1P91MVKMVwmCxB
         poI3bD+LBjaAdFdMtqySnVkHOC3JzOxRc3p0/d/wD+9PCZjRGLGftv2kOC1G6eFcMhfB
         vv9p6QeohdaNIKh46lO7NTBqjBgLWwYsffZWOC3UWTj8r0yvzKKDtUBHd/PHv8d68KMK
         DRxlGfEKXTSKbVRw0dXTUgnzP64bDKAsW+IC/6kuJo5hIyvQE3YhJXc6oytriWT3ssND
         F3xTKM9/69I/SE/xKu2IX+ETX4ONQZ+m/eqLJGrg1Oa9+Poyw5oE4TVKDHxtAZ5c+uLG
         FNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738633014; x=1739237814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ROq+7dop8/gAZioS6LiNRBVOkjkfWTu5NLRN5pWfuk0=;
        b=ZPENcIZSiHkT78+a3Cmlqh0V+5d4GA/Yck4dQIaIlhppx/USwcuA8yUgkNsFKMgJy6
         d60+I9y4M4E00crZ31woEbCMBsX4KmBgMiVOYT5fQiUuZ+rfPMuGIX6BiUi2U3BDdaEy
         12lU1/yV4rQ0ZezzB9cmgeBgEPkkI9RH7xDwYk4O9/gLN1TdRxBtWyJhhm/xoCOtVssc
         4a4uf6Ws7SVEl9nnytr9+NmG6DodEQYYK+PVRYlW9+p40jwIULHQfESLzzDqhXx+NDpi
         xyRByhRMbo2sYrWOvhHOm/1YNfe3r3OC5iFqBywj8Tg0e2dwGCnXlV2o+qSMir7RZ2a8
         7Zgg==
X-Forwarded-Encrypted: i=1; AJvYcCXa+l59YNE3bYqMytxnVbqaP7463VAv/6vQethLwCQehYY/rAY72DDrW9S59XLzfxupCLQHI9Te9l2N@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj2i2TuwwqhmKdLtCeWbvqJSnY7xRASLT18PMMneC3fYE52Vw7
	bceiaLkCerfLl+XCWenw/oWZE90LGZUT28ihdusRdZ/1zd2SENTcm9V+h7xJYTP/DtnqMDYdxMe
	yrg/4pPxxr0tIdEWmLjTFyVNM/1UC98ynjXEfRw==
X-Gm-Gg: ASbGncsR50fkQauae0fiO/MmyBn3hGzq9722vEdzXReVbawQl0WM/Wn4YgPqdAZFkCJ
	nuJznguDcvQKMYT15EvStxilO0f+JXMKEaj9g5GjNh+1959J9EDyXWxbKEFwfn0I0xjaVOAbT72
	glILTqnZ6umTlvy+FkrToDWXBlMuYZ
X-Google-Smtp-Source: AGHT+IEndGqJLe3lRomYw81FxRc4rJi4daHHHTKmvJkj4axffR2/iXurAfxujNYq1cogoGYH72n70X+vXXmF4hJGdBY=
X-Received: by 2002:a05:690c:c99:b0:6f6:7ef2:fe74 with SMTP id
 00721157ae682-6f7a8426a5dmr180536937b3.32.1738633014293; Mon, 03 Feb 2025
 17:36:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-2-b3774120eb8c@quicinc.com>
 <vry7yib4jtvyc5baruetqb2msy4j4ityv2s6z5smrz6rqjfb5l@xoharscfhz5n> <6873e397-dbc0-4c30-8c08-a65ee7cd6e01@quicinc.com>
In-Reply-To: <6873e397-dbc0-4c30-8c08-a65ee7cd6e01@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 4 Feb 2025 03:36:42 +0200
X-Gm-Features: AWEUYZlF9xRy7fPmY8vHPfUe0fIEvkxweH_j9r0Xv-PAz5SBxJgUbog5Km9Pvw4
Message-ID: <CAA8EJprjxMtkefY+90cLGVgz-bDf=VXnaa0eH4ESAC6nf5vrLA@mail.gmail.com>
Subject: Re: [PATCH 2/5] phy: qcom-qmp-ufs: Add PHY Configuration support for SM8750
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Melody Olvera <quic_molvera@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org, Manish Pandey <quic_mapa@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

Hello,

On Mon, 3 Feb 2025 at 10:03, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:

Your email client has corrupted all quotation levels. Please fix its
configuration so that you can not compose HTML email. Or switch to a
normal text-based email client like Mutt or Gnus.

No additional comments can be provided to this email.

>
>
> On 1/14/2025 4:19 PM, Dmitry Baryshkov wrote:
>
> On Mon, Jan 13, 2025 at 01:46:25PM -0800, Melody Olvera wrote:
>
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
>
> Add SM8750 specific register layout and table configs. The serdes
> TX RX register offset has changed for SM8750 and hence keep UFS
> specific serdes offsets in a dedicated header file.

-- 
With best wishes
Dmitry

