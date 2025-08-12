Return-Path: <devicetree+bounces-203544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 201EAB21C37
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 06:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C7922A49BC
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 04:47:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC1129BDA4;
	Tue, 12 Aug 2025 04:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mtEkAWmM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFF01E47AD
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 04:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754974014; cv=none; b=AC2jGQ6b8vGqtdjxsSh1ILqXPUOxiKTFEQUlGNCxXnxMM4PEt2O2HJQNzO0SFhXCUZ2iiPYSbxU/8++LGrm4TCLF0nvaqOifHdrldNML5mruE8U2uOIzrp/G//N17lyWZLxqJp0eFd4L3E91E6k0kcQ+ug9BQX6MIy1Y1hOs7Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754974014; c=relaxed/simple;
	bh=wC3ytpNQLFhZ9ExmBiZv2b74og9kvNU1YGCPkEuFVYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tjf4raLQ39jvcDARSHtpSuFbtRnry1SZrTnHQ7B74clhAq1jXKCET/0F2kKXQlUHr1kdQBght5jsAHzJyyhXhDsy6S6PbgIpCyYfRrGADdm+NYcWL2zaOHZvh1ECi37b+/sg/d5ahZ4QXuJbWF1fCEFv97B7YLBFhxoJrrk4lJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mtEkAWmM; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-31ee880f7d2so5797443a91.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 21:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754974012; x=1755578812; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/PAp/p0CKEU1PLaC2oOhrdXss1JcDMsVFpCnTxkIB8I=;
        b=mtEkAWmMoD3Trl0Q+VzN1HOiZcJw4vXeUCB5pfADvIHMbGRFsQXIxJu9T31YUGDv5T
         YH6KGH914GnyqyAYkgpWumapQdTT0u8r/7/yoANfqZnU7r1Sq6s1e6XNXWX1+B2PqziF
         mFm5TcP/EcgsWtUaJiDJvWgOCjNZDEeoLDHY5ijqbGIu2UJE4lgqCJKnUfR699X9dtW9
         IHo6PaWpcrQhR9UrNiyU9dZLq0/IgUOxxS+o6rI0ajnoSy7raBPEolSvnsNCoCJ7Vp/6
         YMO9ofWHfOeeiMZnUf89QcntlBKSSP6FBvNJbK5mQv190bgUo4Kl6VzfoWX5XlUy/VO7
         5OGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754974012; x=1755578812;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/PAp/p0CKEU1PLaC2oOhrdXss1JcDMsVFpCnTxkIB8I=;
        b=GSfbcVVGLjsrPr6yGkiK2feU09Y8I80IAsv2m6TBQkAq4joGE6/9nbdGM6VZQLvGnn
         ruL5/qVPtjyjvQq7bxIfxF2kXteQZpxSCAtnWT+UCVfLxY6OmGWBX3QwxV95I2gewHaB
         z8JUX7hWaYkZkFKRJXRs0BbPHO8+R8NAH9UzgkuIxDodXf16rlwrQUYzQUDPa5SJnivv
         Tkvb9DwiKfD3zLGY8lwJ4iQmjUV5IqjJfiq8njd3mkxug6AIV1Tb5OKVbmTcYGLRL4FL
         FScPzS8iMXL9dTaiTah3n244ClH9TCwTIA+kFjzs7iJOIdgSiYtNkcSR/gGPhtZAm/aB
         Cj1A==
X-Forwarded-Encrypted: i=1; AJvYcCVqx+qIVGDAAdNrhfMvQjRBtxqq1/dq5FkjgqJCwxKVE9Sbnyegc1u1HkF4plunYWEDT3H7XsBqjzQi@vger.kernel.org
X-Gm-Message-State: AOJu0YxWgHinlZ85+em+Vhy6hY4pS+TJ7+XhK8PKivm2G1cYD4ZZxkLa
	6d1KkxGNUTT+iAk2if5JnF4UaJadRlbDFxIjmDw8ZZL01tS2Z2R0ZKYzv9zyi+j10OE=
X-Gm-Gg: ASbGncsUkB3cNbb02OXqbA/mhrDI9jWylJ9PnNalzvG5lSculRJw6WULEfQxqMeSGXC
	n7tKH1NINgEk0BZy4qOKNCj5XCuT4hATaLZ25jVBl13J8SdsBFKSSwEyueWG+vMbWLhvwOphx/U
	+BLd8K4bmGlrG/YBFKEJFUScqAPhtaCBSx/tGiYEkxLeo29xZ3KGHJVcQoshTYnXVRhyRtnpFhM
	oJAHBhe2wORk3MSBFio6LpLP4WehAvFmgatQ3JjFrbREMfF0C3rQtfAHlHTG/1c7UpdtCf1XDp5
	sFqm8pg15KPHiIHayDXQKgSxPXZl1n6HA+kyo7crg0O6GtiDnZlIWE2HbsV37/5S2HgTX7qc8Y9
	o7rVumSastT+Kpdbgn0278eC9
X-Google-Smtp-Source: AGHT+IGjPX0id8Dv8vez0mnwgena9eAtzVTtJZ9HyxZHou00TWOaELyAHtHLqaUQtbKMZdNuqWLIpA==
X-Received: by 2002:a17:90b:55ce:b0:311:9c1f:8516 with SMTP id 98e67ed59e1d1-321c0a6d1c0mr3313417a91.15.1754974012349;
        Mon, 11 Aug 2025 21:46:52 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32161282ab6sm16525053a91.26.2025.08.11.21.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 21:46:51 -0700 (PDT)
Date: Tue, 12 Aug 2025 10:16:48 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Taniya Das <quic_tdas@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Ajit Pandey <quic_ajipan@quicinc.com>,
	Imran Shaik <quic_imrashai@quicinc.com>,
	Jagadeesh Kona <quic_jkona@quicinc.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 1/3] dt-bindings: cpufreq: cpufreq-qcom-hw: Add QCS615
 compatible
Message-ID: <20250812044648.7rifiugfjrdso6f6@vireshk-i7>
References: <20250702-qcs615-mm-cpu-dt-v4-v5-0-df24896cbb26@quicinc.com>
 <20250702-qcs615-mm-cpu-dt-v4-v5-1-df24896cbb26@quicinc.com>
 <3xki62glazqka7gngvrz3jifk36vkjlqjm6gv4mg7lqbhnnlsa@ryxyt2pcsfk2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3xki62glazqka7gngvrz3jifk36vkjlqjm6gv4mg7lqbhnnlsa@ryxyt2pcsfk2>

On 11-08-25, 22:46, Bjorn Andersson wrote:
> On Wed, Jul 02, 2025 at 02:43:09PM +0530, Taniya Das wrote:
> > Document compatible for cpufreq hardware on Qualcomm QCS615 platform.
> > 
> 
> @Viresh, @Rafael. Please merge this binding patch through your trees.

Applied. Thanks.

-- 
viresh

