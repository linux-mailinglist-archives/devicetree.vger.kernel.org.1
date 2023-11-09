Return-Path: <devicetree+bounces-14818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FA07E6BBC
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 14:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E024F280EA8
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 13:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8B431DFFF;
	Thu,  9 Nov 2023 13:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg4W2xZr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A0701DFF9
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 13:55:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C0D8C433CC;
	Thu,  9 Nov 2023 13:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699538128;
	bh=PRSbRNUDpo7VHbla1Uy5eT+4E78wjB1pL4qy+Ym1s9E=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eg4W2xZrybsw1e1QnQ5CPHnXWTNBhcLj2+ItdMcjGqoHfKmkRSu19uRP5tYsVV+Qt
	 sWxcV3WLq9+CmG3NCYBdA057lIc5OqkcqXnzT58qdTfw6wLPPH80C/OtJMRdmTP7J/
	 ygw7DmfiARV+zmzIdNRTF2L62K/sngHhQpalr7peO+O3i47/rBoYprtl1PPGdNg77M
	 lsF7GzyPMntgLsejQArqEy7DY6YwaEhhUGc6bG8/DlIYYJ3mp1ZhpTzQNZSQ2OJX8O
	 dFj0UC8LT0pZxsmWqPFMsRB8u2nBiUnuyz8KQqd7IbcveTid72TIhzT7YlXxdr600d
	 oeDxO/OCzr6eQ==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5079f6efd64so1055732e87.2;
        Thu, 09 Nov 2023 05:55:28 -0800 (PST)
X-Gm-Message-State: AOJu0YwUTz8t3XjrTxVecnk+EHo/9/BhNYs1QBWLNDQFyjjMJvmx/cHY
	JlJ1YYiNtJbp5YImnB2xeq1tpBQuqDqYF2yR0w==
X-Google-Smtp-Source: AGHT+IF/PvyWrTicWn11hGwtbH/sTmZ3VNLpwfON74Eg9nVNXV0YZB8sj+Mc39cdyBdA2jEdrvTPxgJBhrkGnynW7/M=
X-Received: by 2002:a19:2d5b:0:b0:509:4a02:49f6 with SMTP id
 t27-20020a192d5b000000b005094a0249f6mr1227854lft.34.1699538126665; Thu, 09
 Nov 2023 05:55:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1698835699-28550-1-git-send-email-quic_ziqichen@quicinc.com>
 <20231106144831.GA317907-robh@kernel.org> <5850d5ac-e735-4358-866d-f410b00ba39d@acm.org>
In-Reply-To: <5850d5ac-e735-4358-866d-f410b00ba39d@acm.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 9 Nov 2023 07:55:14 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+XB5p_K3C+rc5XetQ-Xfxu4umNFzcF0idB2hhZvS7HLA@mail.gmail.com>
Message-ID: <CAL_Jsq+XB5p_K3C+rc5XetQ-Xfxu4umNFzcF0idB2hhZvS7HLA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: ufs: Add msi-parent for UFS MCQ
To: Bart Van Assche <bvanassche@acm.org>
Cc: Ziqi Chen <quic_ziqichen@quicinc.com>, quic_asutoshd@quicinc.com, 
	quic_cang@quicinc.com, mani@kernel.org, beanhuo@micron.com, 
	avri.altman@wdc.com, junwoo80.lee@samsung.com, martin.petersen@oracle.com, 
	quic_nguyenb@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_rampraka@quicinc.com, linux-scsi@vger.kernel.org, 
	Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Wolfram Sang <wsa@kernel.org>, 
	Guenter Roeck <linux@roeck-us.net>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Mark Brown <broonie@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 6, 2023 at 11:56=E2=80=AFAM Bart Van Assche <bvanassche@acm.org=
> wrote:
>
> On 11/6/23 06:48, Rob Herring wrote:
> > On Wed, Nov 01, 2023 at 06:48:13PM +0800, Ziqi Chen wrote:
> >> The Message Signaled Interrupts (MSI) has been introduced
> >> to UFS driver since the MCQ be enabled.
> >
> > Not really relevant when a driver supported MSI, but the when the h/w
> > did. Has UFS always supported MSI? It was added in some version of the
> > spec?
>
> MSI support has been introduced in UFSHCI version 4.0 and I think that
> the controller vendor can decide whether or not to implement MSI. Does
> this mean that the patch needs to be improved?

Yes, this information is what should be in the commit msg rather than
driver details.

Rob

