Return-Path: <devicetree+bounces-52592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7918874D8
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 23:32:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B70231F22248
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 22:32:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E4E482872;
	Fri, 22 Mar 2024 22:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QegqF2HL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602680628
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 22:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711146732; cv=none; b=iVrkBVFiMociDfAvQtIKJZ/mzy+AVfLGLFbrCHMq9ZcORsSsLi4BwBzI4u7TtOn8PgzapBT1Mm2ljErB0Iy7PboS6UiS16Tb3w9RBo9WAgBtD0nRb9fiuB2IKO24cEBZ/HhBmRiJOzukUlEgQN8nH/dMe3bCuVJNeszQoHXT2jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711146732; c=relaxed/simple;
	bh=SqoB37OT1HojDKRhowyuuzQ4ERbxzLBp6bj9r5cbVYQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lX0GtJ0VnOgm6XkluNKdHm6MKNRB+omj1CSgQipn5cX7NAxv9oy2mAOI+GC0H5fP9B5k31hDrvIkYy2LDDuavXHUh4OW/jNlLFwkadgQC6HRrIXb14+vJV9bZcHNOp9+mYSgjfhldLh0NVBWfn7VXyuolHLJIelIrMRuKcN9Mcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QegqF2HL; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dc6d8bd618eso2688419276.3
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 15:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711146730; x=1711751530; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=U1a5pzjd5I8Z/mJlSaH96qG0n7ip9wTr8Kfl87ju9Mw=;
        b=QegqF2HLN8XPZETmZCUND1lYGIhpClbZxuugg2tI6vvE6qnzi4NNLdlX2X7Xp2QgMZ
         VyYbaxx+Vqd7ErgAvPqNsnS2pRYBblWEZeF+2WrJA+PQn46Pu4Gxo25fECJQbiKGz1L8
         iBQINq5C5oHB17e7VXI5bCLhozJ4lba2RjhZ2CjAInlGGJLqVEXpJBRAlpDyU0B2Vm24
         3dr99q7+nh23HjzzIkttiMs+x7XgwI00sX15+sn1CH3iduIwfz957j9e1KC15BmZl9I2
         AGcPy63KaBBV8YyH0hSNdS8/WX7AXKGeuNlviA8Rgy6zJoBiNrHLrrJxjpuiVvrEDiaf
         j7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711146730; x=1711751530;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U1a5pzjd5I8Z/mJlSaH96qG0n7ip9wTr8Kfl87ju9Mw=;
        b=vGWSIq12Kqjeu/VBXt5oZMOs7j7jgLsFXqdZgCzIeOYmBQBSUEyFnm3tkXJR/+R01k
         zLhuOFJbQ34ylTTbi23Eh8CBW8LqHPVdPGWHKChiyFbEXk2i26rEv1fpKYOaDFcn/Xnx
         it4nIjwtHd8eNBkAVAYaB+KAm9Qp2O7fXlWS6FmnEvE5Zwmyy1sMTecKfWmOBjqgUKl6
         HQmAbX6yaBoRYth5B4gWVCOnz1UXCR2yWOZJvnKFTK4kaJPuVV8DMCu1Ax/7fbk3up4K
         f/CxYjQPVBiKnw7SN8uriLVRAItnBlWvOB4H5zBin3EhpBXIAWaQaL2RkihH0Ucy/rPM
         nQ5g==
X-Forwarded-Encrypted: i=1; AJvYcCVazhsVDBHD3/Zbd2MlT5jYXrt0GVHda9qztqtwPd/o2IOjZnY1iHn31PZ5Mtw7SqCq5IQSgAHHr0QlUgCZgp0mjYKViOc3IFtt3w==
X-Gm-Message-State: AOJu0YzwLdFjA9lGTXxMlOvDia3iESmJIyR4TnWY3PqPZvPKqDaFVbE5
	usifiCYZS+mZ6elx4QOa5htPdrdTks03TcjwSsjYBvvsAqDTS4yQScIh91I3MvC4fQ81fkCL4RZ
	OURGx4NzqBxKcZxR/OCMG6b8nSF0aJIWocRah0Q==
X-Google-Smtp-Source: AGHT+IGLQFN+Cx2L6/BR6lRV32tv9zuTfkKLRJ9nOBrx94hSRHDg6IOx4CBERz5ZDrf0Vc5gYEkGqgbLxSkOYOtCH9M=
X-Received: by 2002:a25:84ca:0:b0:dc6:e4f8:7e22 with SMTP id
 x10-20020a2584ca000000b00dc6e4f87e22mr651683ybm.62.1711146730353; Fri, 22 Mar
 2024 15:32:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322-typec-fix-example-v1-0-6b01c347419e@linaro.org>
 <20240322-typec-fix-example-v1-1-6b01c347419e@linaro.org> <230eab52-9751-43fd-8e47-fbfe12410e44@linaro.org>
 <CAA8EJprD3fM966pLV4QXPUu=bFTn24fvPMKOaGqtqkAbdz7sOQ@mail.gmail.com>
 <5ea4a187-1971-4970-a289-826d96c0351a@linaro.org> <c0f1e898-7638-4b7b-a938-9e31e5b57e57@linaro.org>
 <0b091595-1587-421d-bb00-c00ef729d143@linaro.org> <CAA8EJpqvwhafFoD_=GO4E93JBQA2A+xY0rG14pgPm=xgJ9Yz_Q@mail.gmail.com>
 <7cd6768d-780c-4cdb-8091-c7a161eab23e@linaro.org>
In-Reply-To: <7cd6768d-780c-4cdb-8091-c7a161eab23e@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 23 Mar 2024 00:31:58 +0200
Message-ID: <CAA8EJpoDZ0cQmKk=MBbQf446PXZf2-93Ne121osyUGRvABoing@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: qcom,pmic-typec: drop port description
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Mar 2024 at 22:44, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 22/03/2024 15:49, Dmitry Baryshkov wrote:
> > It's true that we don't describe CC lines. However In most of the
> > cases CC lines are handled by the Type-C port manager directly. So
> > there will be a connection from usb-c-connector to the pmic-typec
> > itself (which looks pretty redundant).
>
> I think it more logical to associate the role-switch event with the CC
> lines which actually handle the messaging than the HS PHY which does not
> to be honest.
>
> If we predicate a name change on fixing the namespace then we should fix
> the namespace instead of reuse existing for expediency.

It's not an HS PHY. It is an HS host  = DWC3. Anyway, CC lines do not
go to the DWC3. They go directly to the PMIC.

-- 
With best wishes
Dmitry

