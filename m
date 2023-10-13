Return-Path: <devicetree+bounces-8445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BB47C8356
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BF971C20B05
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9075E107A4;
	Fri, 13 Oct 2023 10:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P7OsVMce"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E64110947
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:39:58 +0000 (UTC)
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B2610B;
	Fri, 13 Oct 2023 03:39:45 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1c9d132d92cso5406015ad.0;
        Fri, 13 Oct 2023 03:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697193585; x=1697798385; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GP7ROiugp3qTJyAjvL9c+dbRe+fASSm1oj9jqcb1+wY=;
        b=P7OsVMcewW16Qm4TQdGNiFo93be+Clx/hINCSIqHz3l9KVkaYsIHd7N9GWsakoFKEK
         4TuamVq3T9bpZ/pp2E4M+EMsHbeA7rT0NsswmpEetzms9BOTYh9sXQJCdO8CQJXdqbMH
         jRJdqYe2h03QG3NpMvAHlolBARLW6iKPPY+xacvQdhlf/3I9a0CiXSyZoYJNZiXDBPBT
         91cVtKcy5qLeEd02FGEEPkvZY2No9rAdp66vbaHC9WfD0JOUzFtccbbyKy/I7906nsmi
         J6rfaDCZWVlWLVRc79RbEjFlzYL6yk8y4pXGrMS4qoBCPr63/cxYPpibF/NoMQDWnRzk
         o1VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697193585; x=1697798385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GP7ROiugp3qTJyAjvL9c+dbRe+fASSm1oj9jqcb1+wY=;
        b=mVIE4aUW0ebt5foeKSLXadGqCblam7Egw9mlbaDuFcqI7BxNtUQVMeU+8Fw1e4N/fJ
         go5fu8bq4AaMPvgEqMeheoTn/yuq328CtfOc1d6HV94S35tpR2oIZwvwi8U8XXCF/aEd
         w8clbMzexOAC5RPkBXoOvDNpN7VB8fFu1ZmHyFJUhV7MBW/gzESRz9igfnLhVt2QhVsh
         yv+kD+2nBmOgoyVtZctrrgHAqh4G8IdLCc/H1zSQuElpATSO1kBMl6VF96HSiUVqqUTX
         VdTqz6izbBb3YNlMzkan9y7JZXGAhmNLX/AigKA6TlZzXOIn9kSab7JgM33efxW5Iyf9
         sFTQ==
X-Gm-Message-State: AOJu0YwWXOVf5zVh+l5KtsrmTzltFNgPlfMTf2h45Nj1zDNAN+x3AQp/
	z/MeoX4qqSki0uCxdoQHTZE6t92OjqlL7R/VIUQ=
X-Google-Smtp-Source: AGHT+IEYoh122g/P6HFPgR/e78n9E/TNkoYYibcKt+Zi1n+EzTEs7FKf6FEugrnYQtb2tVE6SggfAXfImqgccBZC5fc=
X-Received: by 2002:a17:90b:1bce:b0:27c:ebab:5c60 with SMTP id
 oa14-20020a17090b1bce00b0027cebab5c60mr9913283pjb.2.1697193584965; Fri, 13
 Oct 2023 03:39:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231006180453.2903342-1-festevam@gmail.com>
In-Reply-To: <20231006180453.2903342-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 13 Oct 2023 07:39:33 -0300
Message-ID: <CAOMZO5CfW10dwVDYaHkvhTMKeHw38ZAt1kdH8qB=8AM=cqdHvw@mail.gmail.com>
Subject: Re: [PATCH v10 1/4] dt-bindings: thermal-zones: Document critical-action
To: daniel.lezcano@linaro.org
Cc: rafael@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	conor+dt@kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@denx.de>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Daniel,

On Fri, Oct 6, 2023 at 3:05=E2=80=AFPM Fabio Estevam <festevam@gmail.com> w=
rote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> Document the critical-action property to describe the thermal action
> the OS should perform after the critical temperature is reached.

Are you happy with the v10 series?

Thanks

