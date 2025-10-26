Return-Path: <devicetree+bounces-231167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DC3C0B0A6
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 20:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8D424E46E3
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 19:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4893025F984;
	Sun, 26 Oct 2025 19:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JjC56XyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFB621765B
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 19:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761505244; cv=none; b=bOk/4W+0iGHrCeGTdhxQmO3Yewngto7ZR5EbUIozHDFl3hOPNAKFgLWeeuUjExgwQGbZxT03hhQ41LHIpXjTIJNRzudqAZrfftF3TDQgEBpbAtIHcgWzZaqfz+8Djqz/2s9aLxGXCYp2lFEegstLcOJLMByehDEJ8ypwnefgNRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761505244; c=relaxed/simple;
	bh=3Q3b5GgkMN7A8E1Ye/bKL4jzRNvu92PYm7G3eWiosaU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gcqrYJmBAb7tGbvaQ/v1LQC6f/2FiC6091ihxlw5IlPSow/Ozj6k930wREHOzBrBJkRDDacin4/BUsPWst9aTuNmFoEZkLfbpcQkK3JAxsESR0tTDLXp8LAF9yehTyb5iXZllbToGnCiieGRPeaDFOcpLxLfCKolSOOID08GbiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JjC56XyQ; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-427091cd4fdso2241232f8f.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761505241; x=1762110041; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SWjeXMPyNxQIW0i9GzAqz+QiU2LzBuikp1Z6CQsw3Bw=;
        b=JjC56XyQyFTfbiXAHUPPIyTaLo3ZJFhNdFovyrOKQcwi2YVsgpH8D30hFg519TmQqu
         zSqzdxIoY3uokr4fj72B3ij7kp+flxuwz7+qXcsS+1kN6neYaxkFD5qROa1936jfO8Wo
         c8KWHpSw4OIN02BCu1ozpVX6wpg9Fod++7pMi6H+CcjVdoEmPYijBY03CTCNS9ZzF1a4
         kL7EMIa3Xx7x9o0/uYtwizStyMuQy6IEUt+ta25h8m5k1vMtTCcCHtNRRpAizC4yyrDe
         uoF5YQBRSq+7V9QFpqoHoOBlczRtEGma0edxw4WozNa8QU4PQqcd75u9Hlr1sPcU+Ng2
         WTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761505241; x=1762110041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SWjeXMPyNxQIW0i9GzAqz+QiU2LzBuikp1Z6CQsw3Bw=;
        b=UZYOVfSg8XjaO1+Q4JpXev0RCZy6y0DabxRZH4snY/CAMi6qRh0IzpDigrIQfjbwNP
         FjHuPePK8OPYZNJ9bTmFTRXvkEBH070Kn6jT1F8bwWVreg/J5MRN59h6fjOWXjHT6FP9
         +hBXYy87ByvouSMOkH+teUlsgjt+CTuxFixqMQ4zeCjCoVRo+zEjWrE4Bk799So8c0Yx
         n7V8qdU3y+x+OYtXsiVgP2ohZ9VBwjNR3PD4WdjBIFyQLq2HToivsfyWCMFyCc/dHNaZ
         b1qYJVTwFZLQucXG9sCGtcCjdvWaCat0V7PagkOhhyXsgjpP7y6KAomWLPDquBvTxbng
         OdRg==
X-Forwarded-Encrypted: i=1; AJvYcCUFsv93Drm/1JA8v486i7aBtzMtbUem6jf8bmPI8sucFprDzT5aMLtud2160/2t0MQpnqkX3igDxou4@vger.kernel.org
X-Gm-Message-State: AOJu0YwA15/wjVk1jxmwhAoa+iQ1tnpT2r9pLDdqWoqH8Mm7jdxKgh1n
	iHjsLyhHQKLf7dG5j2mucHAtB3yeAYXvKOHi5Vjv/jaNKQvdzcY57owOMd+3RcpAqpc=
X-Gm-Gg: ASbGncvebCOmEABmrRrI75Y4jUlitJ/j9uKtNWLZyzsOgNeiCIqg1R2pd8rFqocLsT5
	3ix5L/z6e8pHROhCWqbLVVYLLgzJPfhj0IRkzauhLxImaogta393oSbsWl+cgQjlj6H/UkmjafP
	Jonh//i5LOtcL4LrpYjoH/vOOVdZwjKQpRJvVfBRwwJRecyAFlHAfbJ8nzMbxqHmR+WlTAQLw8X
	4zVP0ZCfSOF1MwfVsdQnF2LfBVBILl1HQ82x/xNvCbHoXxjXVCnocxsihiQXTEdhq1Wolbu15Ay
	WQhp2ADnzCUjk/+x+R+2nz3EUzqtoNfIu/GNtn48ZOXbjH+Kjg9vOW3dLw02k0HQWMV1jgdMiP2
	7hZ8oDQ0Ry/TG0MGkVAepz6Y56M/HxKaTo3+3XLvNPGVSckUwawuN+gbAL5ioacPIFyJZymCw
X-Google-Smtp-Source: AGHT+IGZ7N6ulprujb7qEVdOtn0PLcuo5/p4E5IBnLRyLvfZJGqbZIZWqXl4kMRUT8H7LjxiyF7gfQ==
X-Received: by 2002:a05:6000:4909:b0:427:53e:ab25 with SMTP id ffacd0b85a97d-427053ead25mr28534724f8f.49.1761505240687;
        Sun, 26 Oct 2025 12:00:40 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5985sm9798883f8f.25.2025.10.26.12.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 12:00:39 -0700 (PDT)
Date: Sun, 26 Oct 2025 21:00:38 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Elson Roy Serrao <quic_eserrao@quicinc.com>
Subject: Re: [PATCH v6 5/8] phy: qualcomm: Update the QMP clamp register for
 V6
Message-ID: <bdxjowtabqvhfskxik75sflqlepf5qpaiuqupfndzwphkxydcy@zjuxh7k6bgqo>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
 <20251024-glymur_usb-v6-5-471fa39ff857@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251024-glymur_usb-v6-5-471fa39ff857@oss.qualcomm.com>

On 25-10-24 17:47:43, Wesley Cheng wrote:
> QMP combo phy V6 and above use the clamp register from the PCS always on
> (AON) address space.  Update the driver accordingly.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Elson Roy Serrao <quic_eserrao@quicinc.com>
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>

 Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

