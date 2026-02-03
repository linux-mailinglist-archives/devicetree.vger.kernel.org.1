Return-Path: <devicetree+bounces-262429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCf1MTSDgmkyVwMAu9opvQ
	(envelope-from <devicetree+bounces-262429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:22:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA52DFB5E
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 00:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4CD0F30C5E1E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 23:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531E8320CBE;
	Tue,  3 Feb 2026 23:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eNMZfLj9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB7C3148C1
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 23:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770160859; cv=none; b=V9CfBgHO1OjTXcoCY1dG3P0Mu3WRY5LXDkKelnyYTp2ZbBTrwLWghCcpMFyvrzHgeMLAH++hmr28YBpI+c/eK65eZk0779ExzD4RvIl+Sq8MaOGjt4nyuepXsZeEcSRl/6er3Y855tERYdqs0fOOCGH+4SiG7WxT9O9rNkp3IEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770160859; c=relaxed/simple;
	bh=DBlsEnCNWOdgU65s3UGQhrlX8AWLWkEiqvqbN717n08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qb2Qra0idtyYmqKKPfEfXTWaPEixkCLDJL5sah8XQDfN7KqcCaIQBG8gAs/pffCJX8YOQeZ/rw4i76xp+RNtUkRIJdJSj97Sd3iPsndLxsJTKoW11V2QaY8A8o1jD+jCutOK0JYvkfShH5aMsIbLZfGV/rX87yLUgt5w9sNj+Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eNMZfLj9; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48069a48629so63851935e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 15:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770160854; x=1770765654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kP3cETuc1CkrPsq53s7PbxZQOsGNVLDKkivfucBoVDY=;
        b=eNMZfLj9tkKmMOs7kikYt2+qc5gx6WoZ55jn8TNRRC1cjpDOasTzJW4rUI/5wNRWXq
         SrUNGKbwjHVJaBK8MvjKvfPOqTXD+6NmgLuNSZDtt1+g5LlL9yC3hN7vCoX2zFOgAjpp
         22GvTZLF/qw5MTX8mUbdvMDfxgvkiKU8sHhvdNk0VM+mBPFdmgb5ySpZXtQuiSwf3+QR
         JrW390zUgThE72BN26Quk/LbSP0iU9l9SsxBvkKXkyc1Xt76uFILq18uUQjDaYicR+Ay
         YryAXBbzSUvq1vjS/HnkG/1uQRRETkKfaDj54bMCoszy1nxEkbudE7q4C7KfVf+E0+is
         ct7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770160854; x=1770765654;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kP3cETuc1CkrPsq53s7PbxZQOsGNVLDKkivfucBoVDY=;
        b=qowZQWpk/ANzLoi55zNZW7x8UoCilgAi6s1GjcEjuEmZVH60nmugeznd+2XdqFHeEY
         HonoZPEIQqgcWeaA7htky5l3MzdL4vaBtq8s5jppMJRlSunpG5qUuGHHnYOpMB+qrAdu
         qAoPHx9VuAYKQ6+PGKSjn7JTF5qnGU0QHgDCyJg+q0/di2AvUqeLqAzcptziTrbJk7sG
         YQUoKhFckH1KJ18lCdtxVJ0ojchVd1xrUpp29jM8E82tyqsnpjQe2SI62jvze+YpMSqw
         wXyjlq/yOXEXRB8EGqAnRSC8zB+RhKwFzauShuFfUJTwYbLK7sGBOZjRgycclmhiRqlb
         UD0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCF1JUMVEvIaqlq5Bz84I+tQcJEes0DF0jwYm054uFM+DRu6cUw9pafTo28UVy/48F5CHEuyR0YDp6@vger.kernel.org
X-Gm-Message-State: AOJu0YxTMcq+o9d7zF5O/LbeH43mUw4lBeRWi9q0WSfFEvEwHh5Jm9pN
	hC81LcVUjMOjmKF+IHvwBwmPLN/E0cddqLd4iBqAD9ZB1DmafQO9dDo1XyD0YMIISPY=
X-Gm-Gg: AZuq6aJ2rtqIRJeUXQwVEZ005Idz2sFjl7jIRDX2SjuMfQRxyvbZXk+W8r28ExzRnZL
	b5a1ePE8gQJXTcTEQiXwzApYO9P0eoAum6dAoAIK/LxiruEqc6rYakhVDIKRUujAPFjYsln9dup
	ESNylIIsXoLT6Mv44lovL9C9DtbM4yStd0LZyb9esmqpJodo5IFm0cFzEkkDFblxT0PpKdZXvZq
	7UCz7OwtBpn5EsW52N2UEdo9hTl56tMGJEkB+jBMkElatoG2mdnGuZyhA3xuQryIkY8e8RtdgIY
	NRsLSd5WM2GvU1qV8jF4ahPyXJKq3Wa8sig1iklZArWzbgJvoJqSXPWBF15lmVLbvufdMMNiCAB
	tlcCPmAOIGW/x0I6l6dhIEsvolddN1VmibAOmDjtXzBX9qmD0RIj8zZhlNWWLGiL909knR+aQvN
	jVYZ3wLEq+DrgAME8gsEkbc06HX6gxabnE1tHbpc4dqUsnForeQqe6gZsVnpNxLkY=
X-Received: by 2002:a05:600c:5491:b0:46f:c55a:5a8d with SMTP id 5b1f17b1804b1-4830e935736mr15228825e9.4.1770160854462;
        Tue, 03 Feb 2026 15:20:54 -0800 (PST)
Received: from [192.168.0.40] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830fe86a7bsm4055075e9.8.2026.02.03.15.20.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 15:20:53 -0800 (PST)
Message-ID: <e31d9865-5002-49fa-b6f0-06328d3d6a12@linaro.org>
Date: Tue, 3 Feb 2026 23:20:51 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] pmdomain: de-constify fields struct
 dev_pm_domain_attach_data
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
 Jonathan Marek <jonathan@marek.ca>, Ulf Hansson <ulf.hansson@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>, Hans Verkuil <hverkuil@kernel.org>,
 Stefan Schmidt <stefan.schmidt@linaro.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dikshita Agarwal <dikshita@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-media@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <20260201-iris-venus-fix-sm8250-v2-0-6f40d2605c89@oss.qualcomm.com>
 <3gNulq9mtM9Uxcj8IfIzusuPDhOGNCEcCGQrxhCBiYbh2DCGhUpRYpLgY-KfrSj746f6RWqzl90Fge-7U_CsUA==@protonmail.internalid>
 <20260201-iris-venus-fix-sm8250-v2-2-6f40d2605c89@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20260201-iris-venus-fix-sm8250-v2-2-6f40d2605c89@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262429-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,huawei];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,linaro.org:email,linaro.org:dkim,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5DA52DFB5E
X-Rspamd-Action: no action

On 01/02/2026 10:48, Dmitry Baryshkov wrote:
> It doesn't really make sense to keep u32 fields to be marked as const.
> Having the const fields prevents their modification in the driver.
> Instead the whole struct can be defined as const (if it is constant).
> 
> Fixes: 161e16a5e50a ("PM: domains: Add helper functions to attach/detach multiple PM domains")

This doesn't really fix a bug though.

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>   include/linux/pm_domain.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
> index f6f6d494f728..b299dc0128d6 100644
> --- a/include/linux/pm_domain.h
> +++ b/include/linux/pm_domain.h
> @@ -49,8 +49,8 @@
> 
>   struct dev_pm_domain_attach_data {
>   	const char * const *pd_names;
> -	const u32 num_pd_names;
> -	const u32 pd_flags;
> +	u32 num_pd_names;
> +	u32 pd_flags;
>   };
> 
>   struct dev_pm_domain_list {
> 
> --
> 2.47.3
> 
> 

Other than that.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

