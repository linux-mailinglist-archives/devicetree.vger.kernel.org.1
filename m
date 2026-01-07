Return-Path: <devicetree+bounces-252166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17411CFBF88
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:32:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85F31306A936
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5606E22FDE6;
	Wed,  7 Jan 2026 04:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KyLJ+Civ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4DA6A33B
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760089; cv=none; b=UUaLyKXgEXXqpXXAEwGZB7gVILRUQplLvuW4TaKcmGyxOi298MD+JjO6jby45lL996duYitl4DSheN1bQsmGWs99CG2DHoBxuIx4MyuikSXH5to/z8vIhrIsnaLERpq2eQ0YxTbkFK4De8n8H356OOx8Qi8329XNPw0QtyhQNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760089; c=relaxed/simple;
	bh=NzR3V+hWLebEkE3+SsGGOtJ3Aw3p/n8XHCAiexT6GGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YIuECBQDp90z8DwUmJDq1J4d3Y4aNJQw5I/SD9aH/n+AKentoTEhGcnGhChO/LG5lCUpPWxOQ8myubUejD2JuQykBV58h77sleLvWaWujyHti7lbzcRZyjS8iR4TX0v3Ss+mF3ihVMVfON5PC8xXS1TR4UwFLfai1JAwpzhBnRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KyLJ+Civ; arc=none smtp.client-ip=209.85.160.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-4ee257e56aaso6057541cf.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767760083; x=1768364883; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NzR3V+hWLebEkE3+SsGGOtJ3Aw3p/n8XHCAiexT6GGM=;
        b=KyLJ+CivbXZtxvCp8TF/x8Sev5yuK/HFr9tUIpwDrj7CKceBHqz4UD1skJzvjzBKRA
         7KeoTys6IH9TyhDXY1nz2JnggQuzNo9T4pAuRTsdFdyA7gH4dsP79Du5DNhM6LlWjNfr
         3yAjPMvVtlGWFCaCIAr5E5b4lN3/x5br9HusnNiQ6l1Mr6ljc39/ABNKWPOyaItuXAjU
         Xqv4fQruvD0cQX4PSGabVvwEq/azJfXiQhguv/wkZoS3Q+8EYnM6liAC3DD+xdeSEtDw
         ibsOy+3qTg62AErYoWV5GWSfo3LQZ3WEK1bkuvI5MJrK8K6ScmCCTEMZREpNylk4TUY8
         NZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760083; x=1768364883;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzR3V+hWLebEkE3+SsGGOtJ3Aw3p/n8XHCAiexT6GGM=;
        b=XMTW0q2Vj0eKXRMHMXRko2c9amm4+a8NzafmUyMpxVc7JsCMcyS6Lva7BYnY7aw1qz
         1K3vCl666Uhhj6OBDTNkGuhUb7nDKV3TxDRXrCLjbxniaoGJkm07Ksb4uczb8cnJ+yYV
         EwgXG0nFREj5Q/qxwAM88TUc3JwLhdLp8gY4fdFRqHV+sATEdD5esJ4DvRTUdEspqoBl
         stXMvMSQgAUowV8A0zdhZ/w3OzzGrwg51Bei6eWRaX0bpvPnIblPBIlUwkf+fvBQITbw
         EMHtENvkWAUOwV9jq1rfgAuPSSqvwKlzaJDf7SXxXVfLM7G2bsjKDWeEOiWjBx4zcBdw
         pAlw==
X-Forwarded-Encrypted: i=1; AJvYcCWKo5xWGV7Wy454+VpbGpvwSscDyN28xfHS4qeWMZbjPe2fFj98BkL4VqyNnfqdCsSQehVUgnwKESzq@vger.kernel.org
X-Gm-Message-State: AOJu0YzI7tRwYEQF8kYmKcDG/4bEBMHCktBL5yZXnVxZTQOTxz9G2Pyn
	gFx+r0EQhaOoyzPbyvMqpz1HZqtTJ74O3vzxe0yEoX8Q3bpsDQb7J673q1XC5w==
X-Gm-Gg: AY/fxX7V0r1TE0t5cUkAQJWYWI0xv7zsWpqXs3rQSUni0M/BS8MVH4JhqqRNC3Aroet
	4jiPu+4zrhe+EmEK6demuLHXa8ejpkayn3j1PdDLI92lUIhfXvt9ZoqIj0yAv/gKJal8lgbyOF9
	KZ+XTWtHbSGHGaQcjLh+YaBPAI/7fOdUuV9jQcAN4fcVqZo3Xgijj0pxm+Ea7cELbDpTMGdxtXR
	vK0mxVQ//TDo14UMtFBssL56943/8sJTGPgks2HcGbUex/Sb/zVsj4q3k4Fb/hhCq3Jlzvy6APw
	LYd691Rq38QExQZu7Y2YvhLVLWrJ8owTpcYIsjwJaAMu5i/wEgoRcqa2NIY+y7YTWB9L3jCmgYv
	IfTIPQWm2za4spKHDTOvSh7oOhfjzl9MDUdP6iDPtooLQ0XsNBkAkI8YZl2NET999qVz3KCj1LI
	FbKmuIzUdPgGJy7w==
X-Google-Smtp-Source: AGHT+IHnQfsj1iawjyhOVxIptrkGxNIYYfdvLPM+KbPfYJZ1Sz8qmIQNy0qNULXQA+Vaduz8APOYjw==
X-Received: by 2002:ac8:5984:0:b0:4ee:17d8:b583 with SMTP id d75a77b69052e-4ffa84d51bbmr67296861cf.27.1767760083612;
        Tue, 06 Jan 2026 20:28:03 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770ce985sm26075736d6.11.2026.01.06.20.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 20:28:03 -0800 (PST)
Date: Tue, 6 Jan 2026 23:28:24 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Robert Mader <robert.mader@collabora.com>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org
Subject: Re: [PATCH v5 0/5] media: i2c: IMX355 for the Pixel 3a
Message-ID: <aV3g6NT2JiLX6ELd@rdacayan>
References: <20260107042451.92048-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107042451.92048-1-mailingradian@gmail.com>

On Tue, Jan 06, 2026 at 11:24:46PM -0500, Richard Acayan wrote:
> This adds support for the IMX355 in devicetree and adds support for the
> Pixel 3a front camera.

Oops, I need to resend this. This version is empty with no real patches.

