Return-Path: <devicetree+bounces-255784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D1FD28A47
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 22:08:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 456CF30F3C27
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C582E322B83;
	Thu, 15 Jan 2026 21:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TFamVdnc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U3Nmn9i5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE06327C0F
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768511177; cv=none; b=dSyCSYhWdBnms3ImRoPPi9e2JtMlJxhijsJOnSaMo42qh4zu89hT8TaTOonpfmsRKmWwuLcYb0A/ZG0pNftdE4Jix+pM4rZKMyQthdfRJUxERcqSFS4zjaZFslp1duneYFiD8JsSfRYeMC1Qa4qWJt7hMPvWNDeCkPLvOldKrNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768511177; c=relaxed/simple;
	bh=Qsel98DzKhpD+mNQPwuTexW6pn1tor1EwEPBgOtpcPs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VfexsRMwr2oXMFzKa/P5ewWPT2j+IlchiM54wM4JF8mz4r7JZsHsiRB/Lk6pui1GoDiIkW/ebybxiQdolvFe4Lc70NqFsNgrpuvfWqEekmMSarcbMcSe0x0qLBHqUuoj2YodlZa5bSxgQ10iH+vLkmtF4Rq+ffpcuSkbQvpB5+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TFamVdnc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U3Nmn9i5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYFHH3113470
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1xvDJAqNi/XjSB0Ms1xbJnTiHcWmVJrN6o3B08nqtYU=; b=TFamVdncmcNm8ThG
	3v3aaGVFgrxTO7VopiZrStqVvwa8H4o4foFB7+MwTXnAl8A5GcWxEPw6B7KZyXdh
	T46EA5O1Vw3Lk2xz+LHzuCcSXzI5t43IF9M7QzZYVwOzqRTnsA6V/pB1eyNUu0Sz
	mXjpQfN/3bpXePjDZH77rBIVKzkJRmud6K7BbH+bByk/JvNB4iKdwZxFomNsCAi2
	6UAIIdnofd/95OMzoY5MyUrGE936IgUyZMAk3P0SDgc77S3xseSqdEsNLkeXMS/X
	DQ7BI/u4S2eyJfODa4Ykh0Yt7FVYC1LRzZAQSoNpgok57pr+4+eUeKQPNc67p5n2
	vyK+KQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq2pm11vj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 21:06:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52f89b415so362774585a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 13:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768511159; x=1769115959; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1xvDJAqNi/XjSB0Ms1xbJnTiHcWmVJrN6o3B08nqtYU=;
        b=U3Nmn9i5E/UEd3FY3aYUj+gMgLhqa/T2wzd4wbWjfUJeDeJdUXk95a5YAq6O+aQ9lr
         KWsyNUft2zr/POEE/Ph4UxsIZfnFNxli5yMEPHOg0pQOXzxqhDaraXfuxrd4pXK1AyVF
         +6ftdyDZ18LCn+3X9+4yDoYBWgwtKbUu8JmcHPKDYIp1e7EzD1VAExD7fftk8cUmKWl5
         5u9Ar/6wvOzCUI03B+egAXHZAJ6EnVXXIKPeBfodh7UAnnlhCXJ48/0HDyJBCpUgCLb9
         IDce10IEm4oCFc12oB6j3VZiROsrmhkqxKgUoiyQTZR5Rkd8W01iNe3fI11N8ICo/Rvb
         jgww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768511159; x=1769115959;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1xvDJAqNi/XjSB0Ms1xbJnTiHcWmVJrN6o3B08nqtYU=;
        b=O6Vnu1O9GCxI9Q82MTphf9ArTSDT6E2xtal37a4oDQDlwBuyihv3sbsNQt4gjho+XC
         7JrNFMgLMo9NxVGsCrH1BH5GRIeVA2e3N0jszF9czcQxZIG9Nlb4LVT5hsc8kYnaQVfi
         WvN6cfW+qIZLN6t63yZLfsoQCRq1kdQeqTWseYGEq2RsoK8jtXV9+DmlXY5svl9m4QVc
         ttagwDCxdRsCcpr4ns16tOnABd9YGNE7DF6PRG97EN//NEAtTeXGg0t+C6ccJywXiNH8
         fJi9Pgxt45ssJ4eomhQ98ytPF/gx1FQ2ab+oC9kBfeI7Az8VKWTgpolBYHN60wJ8rqeY
         mURA==
X-Forwarded-Encrypted: i=1; AJvYcCUzIrYjg7u9ExEfNuT+3YEjLx3UtVYNhDMlTnobsQOL5a2e7A8FnDt+VizGTl9lUfMcuXyIS/8+EqXJ@vger.kernel.org
X-Gm-Message-State: AOJu0YylBmZjvVFr8SI0bkOYQhLnGiaSDtWO+FLjKbkjHHCIv0b98J58
	SrbSWIjEp4K0/FzJRjQpMdispN6yLPKmd5ts/0cn4YbT6QB1cjZDUvnOS9X4hYKEAxXAIA32klP
	Rg10OBiOLJH2Owvj4yHEB6DKLzS3y6l8kyeWUQk44dbhMjjhTtmA72s3O9eQaAWcx
X-Gm-Gg: AY/fxX5XXcUhco4jTHqokexVLkng9NQR3z/SlpZLaqc+3jDRK+KiRz0TxKYtyHHTM4d
	RLy2yz446MjsrrTBAGbLujlh+KlL8t08b1kzYBraKegcNP01dtTTQ2QxyCrJ4woVQ3vKGAX12Ld
	KLBmEVkB12GqVTxTYqD+6OUM1zkGKLq9mmbAaUlxNX4SBlXiu/OD+8nqyi884SQfL6QvimK3Mg2
	cS3dah/tLcY/NEentGqxhXoPAGcj/i42TIHtZ0kYFY4CnZTlHAWtU8LqVusXJpXEJLRHb+Sr34I
	AvFLyynqcIZ9MRASwMWYNs2m3p/2xalQ6UyRd0br8EqeolFo3lzHfJU8/onISJ8GO6Ojfn/TC+3
	GfP/wu3cz1wpwzdDkpLnaHMjIUNhT0Ydnxz5ipcN1cRjaLLAec2q0+Z5/jjdI6FpQAkqOX7RAN/
	5DeWpIWE/yi0sa41Lc98glxKg=
X-Received: by 2002:a05:620a:4088:b0:8bb:9f02:489e with SMTP id af79cd13be357-8c6a67a12b4mr109695085a.74.1768511159531;
        Thu, 15 Jan 2026 13:05:59 -0800 (PST)
X-Received: by 2002:a05:620a:4088:b0:8bb:9f02:489e with SMTP id af79cd13be357-8c6a67a12b4mr109688885a.74.1768511159042;
        Thu, 15 Jan 2026 13:05:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf397672sm155740e87.61.2026.01.15.13.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 13:05:58 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: sean@poorly.run, marijn.suijten@somainline.org, andersson@kernel.org,
        robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, Rob Clark <robin.clark@oss.qualcomm.com>
Subject: Re: [PATCH v5 0/5] Add DSI display support for QCS8300 target
Date: Thu, 15 Jan 2026 23:05:55 +0200
Message-ID: <176851111172.3933955.12274071236835720436.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260104134442.732876-1-quic_amakhija@quicinc.com>
References: <20260104134442.732876-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dJQduy1Kv2Ij08G8B1SlRCBfHK3pa6GK
X-Authority-Analysis: v=2.4 cv=TNlIilla c=1 sm=1 tr=0 ts=696956b8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=s_x85DquI-FxRm-hfV4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-ORIG-GUID: dJQduy1Kv2Ij08G8B1SlRCBfHK3pa6GK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE2NSBTYWx0ZWRfX1q7P1lS9AXLu
 bLeGQd2939k0CjybhZ9BVkv09Ib0jfO1Dx+gAOAUHry8jI2twfYX3ZoVrmali9KgqU/Vqltgwzy
 YwPiFnxvee3PXUuLLUodYo6Gg8SkTF3ZQivLMctQWxc29o2+TiNSmZrRFYxsuJh2ds23QnG+TNE
 SDStBm3blBEylh8LImOyoTwB0x5iho3dNeLlyxGDN74YC2lPJ+e5a/v5TC9TvV4/4fuCggUj1Ov
 Z+NWVMMHW9yOU1hWw9E60Av/8jBCx3HSYE4e4rJFwkUVj7bhRJgnMPw3FTI7Q+TVlrvry/+ZMW4
 Jb/9DlM/2e7SRW1T0YLYbBUW3d+OYpUWPegPPjPo8KwsUhmzic7uNJT8PeIwWqrxu7jb/Ecl2Oa
 NL3HmGkCU3zT+zdwPgiHfm1pPTuM75p3AiMOg1tTxR0cL4fdt0d9EEWPz52EOWOyFayw9x3PYf7
 SE745ghOQQ09jL2xxWw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150165

On Sun, 04 Jan 2026 19:14:37 +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge port
> (labeled as DSI0) of the Qualcomm's QCS8300 Ride platform.
> 
> QCS8300 SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 

Applied to msm-next, thanks!

[1/5] dt-bindings: display: msm-dsi-phy-7nm: document the QCS8300 DSI PHY
      https://gitlab.freedesktop.org/lumag/msm/-/commit/969c948d1392
[2/5] dt-bindings: msm: dsi-controller-main: document the QCS8300 DSI CTRL
      https://gitlab.freedesktop.org/lumag/msm/-/commit/c42973f92974
[3/5] dt-bindings: display: msm: document DSI controller and phy on QCS8300
      https://gitlab.freedesktop.org/lumag/msm/-/commit/f5aa414e5c78

Best regards,
-- 
With best wishes
Dmitry



