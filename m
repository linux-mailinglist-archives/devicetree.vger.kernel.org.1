Return-Path: <devicetree+bounces-273381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHRjL3/jr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:25:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CEA248577
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0024D326AFF3
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:11:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A32243D4E2;
	Tue, 10 Mar 2026 09:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AOhyOmg9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IucTEeU4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DDB43CECC
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133858; cv=none; b=t7hRudLENDogTAfKQiEcxZMXQ90SPPWMdyGbJo5R70jtJ4WdTQHvyyNQu2C/o2iLGPfbuy/h6+WsGMS/UpMVtm8QvKeNZhxTtaweapaXQV71C1L4zZqOKmeQF/Ek1zzfEGUrTz9q15IuSfE56T3t0P6qoBNOXXjnQGtT1oG6/K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133858; c=relaxed/simple;
	bh=Q0AY6KtCSBldM77mQsNYGlz3kP/nXy0gIyHsaehbaw8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SVBxGZbzW6J2hsgG86AvP7UiYGT0+1/scNZNA4M/3i6Rq84DiOGy9NWptE+vFZ1MUb+/aWWiQyHrdW2nCEBclXgmaBoe9Tg/wCSbFWyKA3ZDaMo9nli84JLUHaiberHQck6KK2cnbwFD4BdvLlXGGWdHjUI0I1oH0qyFNAUIAqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AOhyOmg9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IucTEeU4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8h7MK2754160
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:10:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uVJADiUlOpTu+MUy+4poJNpcG5cngpuPSKpeYsR0BHI=; b=AOhyOmg9EIyXh+Ee
	NA43TEOaIXuW+vDzG9rhfEjzbT/4iXNhyDj8gTcw8pxR501HOai/rW+R/1DtWCiN
	zj1AYMgpK+C1TuamJs9rFxWPirLLsR6xNoavl2/9yiBRUGTIqOXmmXB41Gjib8Zw
	TM/Z3PjVk9WyNv12qowXxBuRgt50yQDewR1FWCsghDPlglWhF/d8ry9REFDNxGVo
	IkqVbAOWL2fyNzetmIZJC/EuQt+xph/sKi5O0tGwGA2dscqfc5i1KMMVHNT57xgX
	dZmCdefXliXUdt0NH3wgrEAShuHAbehtg0K2bh0gMl7hVzl5ZiCPHoV2yJUJQdp+
	Zyjj7g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg1mr3gp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:10:56 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb52a9c0eeso10117874785a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773133856; x=1773738656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uVJADiUlOpTu+MUy+4poJNpcG5cngpuPSKpeYsR0BHI=;
        b=IucTEeU4T6M0OlGSOOeBHkyKKrhK8WWywIV+V9jF/ppcUj2tI/deMMXW1bwrmg4PGb
         K2dBrY77VIxSZ/vxpBenL1iTnRKvfKtre0YEU6761LjKMqNngsEJlg+Nf5N80Kyq+xnq
         FQKpR91TFEZYvg+HkwgJz6QTFzAJAf074cUzaOqtgSqDQLpoB2gTIfKmFNZNFt4iVbuh
         i001q2TJ/7M6h9yIy4NSCG1RG+CFRtz+OWcePRF+IChvXu7pqMLMgDwe3yG2aC7SRV2r
         izTosSesbPzMUGbut3qt6KgwtKEZP16uewfZM+Km7QRn9OF8g14Os8SmicZb80kzCFNG
         oWjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773133856; x=1773738656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uVJADiUlOpTu+MUy+4poJNpcG5cngpuPSKpeYsR0BHI=;
        b=qsrvWo+n9bcrLlsZOnPtIpsmabi73v8FCIJpl2IR2DWhMqQSHCn28E/nGOm3oq73Ui
         Fv+DWPslKuqPFTilI02Dp+nTuctDuE8YsmqRsjTqgwsJU5PBCAYAcE9LBg989ESiKK6d
         XA85QDjhE3ZIDrBib1/Gq38mJB+enpV22RtkXXTeLeza+XA4QwRTzKXOQz/Sfd5SgcnX
         3lrqtjf20NorlpklyvX1HpE+rxZHON3lI7kepF3T7udsK8NCpk3cDg3TdtufVsLWe42s
         KooRVnCHhKjiF1jWpAbZ2ldMwZ7iAYOLugfaznnH0VWdKcqZ6rtNBuCf95Nf6F9dIfUV
         7jNg==
X-Forwarded-Encrypted: i=1; AJvYcCXz4Y43p+Tv2sevTa1TnQr+u1E8Qqcchf5FsSzOtwIva6eForSxhq325JPJ8Dh+3GuGBmFYrolHCvkP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4XE0DXu+5NtNICSI9437dNQVEseTBmfRGsfq5T0ziHuhJIBGQ
	PutbctqbB93M/6LT+ZskR9ZtrNm6/FiuTUZnoy2fjDzfqT5LQhDqFUhIhKUVXlKRMGV+xHQ85Cx
	jP0vyQgxKZ22jZ9So3Blj2GttminM3WX626y5xlYiCLB1h6IEcGtHEhScrm6wMH3l
X-Gm-Gg: ATEYQzzsrKS2IgWyYKLGQLb+LLJi38KkOH1BwmGdSr+NDUMGeyVcP2dAmfxJH1A5Snb
	LLfr9u8dNLurIDkyMJCVS2i1mr4C00vi3e02yhCU+U4DE7b3J9+fcyMEWIFZhZk2weFdKbeiZHp
	SzxQZ+uqaDZcQ1fc9jDGGj+xQbCy1qsRRKkr2XZDQfUwM6sq9Dsyl8DH3pqlcqs0qADMGBLG0co
	+CHJQdDKhWyas8Jjb4+Vn6ez53wkGU1lkirsBn0wUWjSVfR+4Dn2217pWuFzDxxeEmq44SA20KM
	aL78L9xejKGxtvYaWh4LapU9bD18+mE5ngKMYNh17vaSkbBlFoZ7l5Tq+Ro+gG6CRaEO9xGX/W1
	CBpdum2uEZtnkoVxCjZBygM3y2X8jqACT4L3+ttVPOYFIWDgKUOc=
X-Received: by 2002:a05:620a:4043:b0:8cd:9a1d:4de with SMTP id af79cd13be357-8cd9a1d0d82mr51165785a.50.1773133856151;
        Tue, 10 Mar 2026 02:10:56 -0700 (PDT)
X-Received: by 2002:a05:620a:4043:b0:8cd:9a1d:4de with SMTP id af79cd13be357-8cd9a1d0d82mr51163285a.50.1773133855772;
        Tue, 10 Mar 2026 02:10:55 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:c419:a350:1e47:af0d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485419b8526sm65155455e9.0.2026.03.10.02.10.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:10:55 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sander Vanheule <sander@svanheule.net>, Bert Vermeulen <bert@biot.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rustam Adilov <adilov@disroot.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH 0/2] support for RTL9607C GPIO Controller
Date: Tue, 10 Mar 2026 10:10:50 +0100
Message-ID: <177313382933.5248.6958227800676530928.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260305161106.15999-1-adilov@disroot.org>
References: <20260305161106.15999-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YOeSCBGx c=1 sm=1 tr=0 ts=69afe020 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=YKjW0q4dgt4FMuy2rYIA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Ed5c5gvJ4GXurNnOrtYsRjB2TF_wVt2L
X-Proofpoint-GUID: Ed5c5gvJ4GXurNnOrtYsRjB2TF_wVt2L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA3NyBTYWx0ZWRfX06/33GmKA0Z2
 BmExiPJp+2juXTpLTFTkfKbGUuPbmdHTP5E00y88BM3CE6wav1pcvWB8sW4fU6PCs9QBcym+ukE
 oS8Lk9zS7YFaxu8D+31mYurCgjzdMVsdMm+V75wIMmVt98ZTgyeMmLId41SxGtoA/Z+NhJVfrFF
 JPpWUq+nBeGAY6hFQiXEumrla844MI6uUkYt6j+tJ3x6EYBeuAeQPxKzNNO7XCNlRwhW+YVrSOP
 5ZZ72g11eVHGJ8Va6WpX+mk3ROItBRioX31oke7k/aT2WO7wYo9wI8X+Td13ANgtny5DcsmWGUT
 4wLO4oDy3LTevO/xgPP3HeHmHol+QdQfTGMqGRTPhRJBia2BKjT0qYLc/dwCX58cV7Mp2X+1eJh
 eGK6mji+KWjgUIakPVeEbgQlL/ppSUM0LvgXYIykVFKUGrbsHCg6RVOvqNWuskmJUJNGcBux5qf
 sHPQCrHE03CsXw6PMSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 spamscore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603100077
X-Rspamd-Queue-Id: 18CEA248577
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273381-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bartosz.golaszewski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Thu, 05 Mar 2026 21:11:04 +0500, Rustam Adilov wrote:
> This patch series adds support for the GPIO controller found in
> RTL9607C SoC family of MIPS CPUs.
> 
> The GPIO controller on this SoC has a reversed port order, the same as in
> RTL930x but without CPU affinity settings.
> 
> Rustam Adilov (2):
>   dt-bindings: gpio: realtek-otto: add rtl9607 compatible
>   gpio: realtek-otto: add rtl9607 support
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: gpio: realtek-otto: add rtl9607 compatible
      https://git.kernel.org/brgl/c/49944d6ab7eb951f2aefee69341c623e13434863
[2/2] gpio: realtek-otto: add rtl9607 support
      https://git.kernel.org/brgl/c/8f0aecf2957e7dba78603544368846133bf6d22e

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

